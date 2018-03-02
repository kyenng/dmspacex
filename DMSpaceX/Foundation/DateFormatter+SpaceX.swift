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
  static let fullDateFormat = "EEE dd MMM yyyy 'at' HH'h'mm"
  
  convenience public init(dateFormat: String) {
    self.init()
    self.dateFormat = dateFormat
  }
  
  static let utcDateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = utcDateFormat
    return dateFormatter
  }()
  
  static let fullDateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = fullDateFormat
    return dateFormatter
  }()
  
}
