//
//  Configuration.swift
//  DMSpaceX
//
//  Created by Kyen on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

public protocol Configuration {
  static var baseURL: String { get }
  static var apiVersion: String { get }
}
