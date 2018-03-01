//
//  Launches.swift
//  DMSpaceX
//
//  Created by Kyen on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

struct Launch: Decodable {
  let flightNumber: Int
  let launchYear: String
  let launchDateUtc: String
  let launchDateLocal: String
  let rocket: Rocket
  
  enum CodingKeys: String, CodingKey {
    case flightNumber = "flight_number"
    case launchYear = "launch_year"
    case launchDateUtc = "launch_date_utc"
    case launchDateLocal = "launch_date_local"
    case rocket
  }
}

struct Rocket: Decodable {
  let rocketId: String
  let rocketName: String
  let rocketType: String
  
  enum CodingKeys: String, CodingKey {
    case rocketId = "rocket_id"
    case rocketName = "rocket_name"
    case rocketType = "rocket_type"
  }
}
