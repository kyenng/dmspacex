//
//  LaunchesService.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxSwift

public final class LaunchesService: Service {
  
  public let apiClient: APIClient
  
  init(apiClient: APIClient) {
    self.apiClient = apiClient
  }
  
  func fetchLaunches() -> Single<Void> {

    return Single.error(DMSpaceXError.shouldNotNil)
  }
}

struct LaunchesRequest: APIRequest {
  let method = RequestType.GET
  let path = Path.launches.path
  let parameters = [String: String]()
}
