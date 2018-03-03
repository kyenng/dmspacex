//
//  APIConfiguration.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

public protocol APIConfiguration {
  var baseURL: String { get }
  var apiVersion: String { get }
}
