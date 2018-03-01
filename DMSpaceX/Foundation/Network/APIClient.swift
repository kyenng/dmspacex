//
//  APIClient.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxSwift

public class APIClient {
  func send<T: Codable>(apiRequest: APIRequest) -> Single<T> {
    
    guard let url = URL(string: "\(Environment.baseURL)\(Environment.apiVersion)") else {
      return Single.error(DMSpaceXError.shouldNotNil)
    }
    
    return Single<T>.create { single in
      
      let request = apiRequest.request(with: url)
      let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
        do {
          let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
          single(.success(model))
        } catch let error {
          single(.error(error))
        }
      }
      task.resume()
      
      return Disposables.create {
        task.cancel()
      }
    }
  }
}

public protocol APIRequest {
  var method: RequestType { get }
  var path: String { get }
  var parameters: [String: String] { get }
}

extension APIRequest {
  func request(with baseURL: URL) -> URLRequest {
    guard var components = URLComponents(url: baseURL.appendingPathComponent(path), resolvingAgainstBaseURL: false) else {
      fatalError("Unable to create URL components")
    }
    
    components.queryItems = parameters.map {
      URLQueryItem(name: String($0), value: String($1))
    }
    
    guard let url = components.url else {
      fatalError("Could not get url")
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = method.rawValue
    request.addValue("application/json", forHTTPHeaderField: "Accept")
    return request
  }
}

public enum RequestType: String {
  case GET, POST
}
