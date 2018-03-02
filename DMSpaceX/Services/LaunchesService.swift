//
//  LaunchesService.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxSwift

final class LaunchesService: APIService {
  public let apiClient: APIClient
  
  init(apiClient: APIClient) {
    self.apiClient = apiClient
  }
  
  func fetchLaunches() -> Single<[Launch]> {
    return apiClient.send(apiRequest: LaunchesRequest())
  }
}

struct LaunchesRequest: APIRequest {
  let method = RequestType.GET
  let path = SpaceXRoute.launches.path
  let parameters = [String: String]()
}
