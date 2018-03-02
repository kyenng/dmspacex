//
//  LaunchViewModel.swift
//  DMSpaceX
//
//  Created by Kyen on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation

struct LaunchViewModel {
  let flightNumber: String
  let launchDate: String
  let rocketName: String
  
  init(model: Launch) {
    flightNumber = "\(model.flightNumber)"
    launchDate = DateFormatter.fullDateFormatter.string(from: model.launchDate)
    rocketName = model.rocket.rocketName
  }
}
