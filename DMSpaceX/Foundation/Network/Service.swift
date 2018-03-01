//
//  Service.swift
//  DMSpaceX
//
//  Created by Kyen on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

public protocol Service {
  var apiClient: APIClient { get }
}
