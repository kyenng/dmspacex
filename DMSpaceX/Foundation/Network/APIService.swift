//
//  Service.swift
//  DMSpaceX
//
//  Created by Kyen NG on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

public protocol APIService {
  var apiClient: APIClient { get }
}
