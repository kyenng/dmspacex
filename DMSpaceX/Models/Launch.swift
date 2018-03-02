//
//  Launches.swift
//  DMSpaceX
//
//  Created by Kyen on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RealmSwift
import Realm

class Launch: Object, Decodable {
  @objc dynamic var flightNumber: Int = Int.max
  @objc dynamic var launchYear: String = ""
  @objc dynamic var rocket: Rocket!
  
  override public static func primaryKey() -> String? {
    return "flightNumber"
  }
  
  enum CodingKeys: String, CodingKey {
    case flightNumber = "flight_number"
    case launchYear = "launch_year"
    case rocket
  }
}

class Rocket: Object, Decodable {
  @objc dynamic var rocketId: String = ""
  @objc dynamic var rocketName: String = ""
  @objc dynamic var rocketType: String = ""
  
  override public static func primaryKey() -> String? {
    return "rocketId"
  }
  
  enum CodingKeys: String, CodingKey {
    case rocketId = "rocket_id"
    case rocketName = "rocket_name"
    case rocketType = "rocket_type"
  }
}
