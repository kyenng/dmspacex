//
//  SpaceXClient.swift
//  DMSpaceX
//
//  Created by Kyen on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

final class SpaceXClient: APIClient {
  var configuration: APIConfiguration
  
  init(configuration: APIConfiguration) {
    self.configuration = configuration
  }
}
