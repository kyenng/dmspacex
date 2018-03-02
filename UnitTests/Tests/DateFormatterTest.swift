//
//  DateFormatterTest.swift
//  UnitTests
//
//  Created by Kyen on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import XCTest
import DMSpaceX

class DateFormatterTest: XCTestCase {
    
    func testDateFormat() {
      let date = DateFormatter(dateFormat: DateFormatter.utcDateFormat).date(from: "2008-08-02T03:34:00Z")
      XCTAssertNotNil(date)
      
      let string = DateFormatter(dateFormat: DateFormatter.fullDateFormat).string(from: date!)
      XCTAssert(string == "Saturday 02 August 2008 at 03h34")
    }
  
    
}
