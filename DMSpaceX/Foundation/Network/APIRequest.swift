//
//  APIRequest.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

public protocol APIRequest {
  var method: RequestType { get }
  var path: String { get }
  var parameters: [String: String] { get }
}

public extension APIRequest {
  func request(with baseURL: URL) -> URLRequest {
    guard var components = URLComponents(url: baseURL.appendingPathComponent(path),
                                         resolvingAgainstBaseURL: false)
      else {
        fatalError("Unable to create URL components")
    }
    guard let url = components.url else {
      fatalError("Could not get url")
    }
    if !parameters.isEmpty {
      components.queryItems = parameters.map {
        URLQueryItem(name: String($0), value: String($1))
      }
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
