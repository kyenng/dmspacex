//
//  DateFormatterTest.swift
//  UnitTests
//
//  Created by Kien NGUYEN on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import XCTest
import DMSpaceX

class DateFormatterTest: XCTestCase {
    
    func testDateFormat() {
      let date = DateFormatter(dateFormat: DateFormatter.utcDateFormat).date(from: "2008-08-02T03:34:00Z")
      XCTAssertNotNil(date)
      
      let string = DateFormatter(dateFormat: DateFormatter.fullDateFormat).string(from: date!)
      XCTAssert(string == "Sat 02 Aug 2008 at 03h34")
    }
  
    
}
