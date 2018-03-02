//
//  DateFormatter+SpaceX.swift
//  DMSpaceX
//
//  Created by Kyen on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

public extension DateFormatter {
  static let utcDateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
  static let fullDateFormat = "EEEE dd MMMM yyyy 'at' HH'h'mm"
  
  convenience public init(dateFormat: String) {
    self.init()
    self.dateFormat = dateFormat
  }
}
