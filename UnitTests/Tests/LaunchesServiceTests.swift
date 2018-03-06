//
//  LaunchesServiceTest.swift
//  DMSpaceX
//
//  Created by Kyen NG on 26/2/18
//  Copyright (c) 2018 kien.ng@icloud.com. All rights reserved.
//

import XCTest
import OHHTTPStubs
import RxSwift
import RealmSwift
@testable import DMSpaceX
// MARK: Constants

private let kTimeout: TimeInterval = 3.0

// MARK: - Test Case

final class LaunchesServiceTest: XCTestCase {
  
  private let disposeBag = DisposeBag()
  let service = LaunchesService(apiClient: SpaceXClient(configuration: MockConfiguration()))

  // MARK: Test Setup & Teardown
  override func setUp() {
    super.setUp()
    
    // reset database
    let realm = try! Realm()
    try! realm.write {
      realm.deleteAll()
    }
    
    // stubbing ws call
    stub(condition: { request -> Bool in
      return request.url?.absoluteString.range(of: SpaceXRoute.launches.path) != nil
    }, response: { _ in
      let stubPath = OHPathForFile("launches.json", type(of: self))
      return fixture(filePath: stubPath!, headers: ["Content-Type":"application/json"])
    })
  }
  
  override func tearDown() {
    // reset stubs
    OHHTTPStubs.removeAllStubs()
    super.tearDown()
  }
  
  // MARK: - Tests
  func testResponseData() {
    let exp = expectation(description: "WebService completion called")
    service.fetchLaunches()
      .subscribe(onSuccess: { launches in
        print(launches)
        let launch = launches[1]
        XCTAssert(launch.flightNumber == 2)
        XCTAssert(launch.rocket.rocketName == "Falcon 1")
        exp.fulfill()
      }, onError: { error in
        print(error)
      })
      .disposed(by: disposeBag)
    
    waitForExpectations(timeout: kTimeout)
  }
  
  func testPersistence() {
    let exp = expectation(description: "With & without save")
    exp.expectedFulfillmentCount = 2
    
    // save data off
    service.fetchLaunches()
      .subscribe(onSuccess: { launches in
        let realm = try! Realm()
        let launchesSaved = realm.objects(Launch.self)
        XCTAssert(launches.count > 0)
        XCTAssert(launchesSaved.count != launches.count)
        exp.fulfill()
      }, onError: { error in
        print(error)
      })
      .disposed(by: disposeBag)
    
    // save data on
    service.fetchLaunches(shouldSave: true)
      .subscribe(onSuccess: { launches in
        let realm = try! Realm()
        let launchesSaved = realm.objects(Launch.self)
        XCTAssert(launchesSaved.count > 0)
        XCTAssert(launchesSaved.count == launches.count)
        exp.fulfill()
      }, onError: { error in
        print(error)
      })
      .disposed(by: disposeBag)
    
    waitForExpectations(timeout: kTimeout)
  }
  
}
