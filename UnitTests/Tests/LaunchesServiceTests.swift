//
//  LaunchesServiceTest.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 26/2/18
//  Copyright (c) 2018 kien.ng@icloud.com. All rights reserved.
//

import XCTest
import OHHTTPStubs
import RxSwift
@testable import DMSpaceX
// MARK: Constants

private let kTimeout: TimeInterval = 3.0

// MARK: - Test Case

final class LaunchesServiceTest: XCTestCase {
  
  // MARK: Test Setup & Teardown
  
  private let disposeBag = DisposeBag()
  let configuration = MockConfiguration()
  
  override func setUp() {
    super.setUp()
    // stubbing ws call
    stub(condition: { request -> Bool in
      return request.url?.absoluteString.range(of: SpaceXRoute.launches.path) != nil
    }, response: { _ in
      let stubPath = OHPathForFile("launches.json", type(of: self))
      return fixture(filePath: stubPath!, headers: ["Content-Type":"application/json"])
    })
  }
  
  override func tearDown() {
    OHHTTPStubs.removeAllStubs()
    super.tearDown()
  }
  
  // MARK: - Tests
  func testResponseData() {
    let client = SpaceXClient(configuration: configuration)
    let service = LaunchesService(apiClient: client)
    
    let expectation = self.expectation(description: "WebService completion called")
    service.fetchLaunches()
      .subscribe(onSuccess: { launches in
        print(launches)
        let launch = launches[1]
        XCTAssert(launch.flightNumber == 2)
        XCTAssert(launch.rocket.rocketName == "Falcon 1")
        expectation.fulfill()
      }, onError: { error in
        print(error)
      })
      .disposed(by: disposeBag)
    
    self.waitForExpectations(timeout: kTimeout)
  }
  
}
