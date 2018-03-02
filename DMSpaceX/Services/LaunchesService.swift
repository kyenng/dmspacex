//
//  LaunchesService.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxSwift
import RealmSwift

final class LaunchesService: APIService {
  public let apiClient: APIClient
  
  init(apiClient: APIClient) {
    self.apiClient = apiClient
  }
  
  func fetchLaunches(shouldSave: Bool = false) -> Single<[Launch]> {
    guard shouldSave else {
      // not save
      return apiClient.send(apiRequest: LaunchesRequest())
    }
    return apiClient.send(apiRequest: LaunchesRequest())
      .do(onSuccess: { launches in
        let realm = try! Realm()
        try! realm.write {
          realm.add(launches, update: true)
        }
      })
  }
}

struct LaunchesRequest: APIRequest {
  let method = RequestType.GET
  let path = SpaceXRoute.launches.path
  let parameters = [String: String]()
}
