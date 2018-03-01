//
//  APIClient.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxSwift

public protocol APIClient {
  var configuration: APIConfiguration { get }
}

public extension APIClient {
  func send<T: Decodable>(apiRequest: APIRequest) -> Single<T> {
    guard let url = URL(string: configuration.baseURL + configuration.apiVersion) else {
      fatalError("Unable to create URL")
    }
    
    return Single<T>.create { single in
      let request = apiRequest.request(with: url)
      let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
        do {
          let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
          print("== Success to request: \(request.url?.absoluteString ?? "no url") ==\nData:\n\(model)")
          single(.success(model))
        } catch let error {
          print("== Error to request: \(request.url?.absoluteString ?? "no url") ==\nError: \(error)")
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
