//
//  WebServiceTests.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 26/2/18
//  Copyright (c) 2018 kien.ng. All rights reserved.
//

import XCTest
import OHHTTPStubs

// MARK: Constants

private let kTimeout: TimeInterval = 3.0

// MARK: - Test Case

class WebServiceTests: XCTestCase {
  
  // MARK: Test Setup & Teardown
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    OHHTTPStubs.removeAllStubs()
    super.tearDown()
  }
  
  // MARK: - Tests
  
  func testDummy() {
//    let expectation = self.expectationWithDescription("WebService completion called")
//    
//    let WebServiceClient.fetchDocument(folderID: 2, documentID: 5) { (data: NSDictionary, error: NSError) in
//      expectation.fulfill()
//    }
//    
//    self.waitForExpectationsWithTimeout(kTimeout) {}
  }

}
