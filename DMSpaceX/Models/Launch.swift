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
  @objc dynamic var flightNumber: Int = -1
  @objc dynamic var launchYear: String = ""
  @objc dynamic var launchDate: Date!
  @objc dynamic var rocket: Rocket!
  @objc dynamic var details: String?
  
  override public static func primaryKey() -> String? {
    return "flightNumber"
  }
  
  enum CodingKeys: String, CodingKey {
    case flightNumber = "flight_number"
    case launchYear = "launch_year"
    case launchDate = "launch_date_utc"
    case rocket, details
  }
  
  required convenience init(from decoder: Decoder) throws {
    self.init()
    let container = try decoder.container(keyedBy: CodingKeys.self)
    flightNumber = try container.decode(Int.self, forKey: .flightNumber)
    launchYear = try container.decode(String.self, forKey: .launchYear)
    let date = try container.decode(String.self, forKey: .launchDate)
    launchDate = DateFormatter(dateFormat: DateFormatter.utcDateFormat).date(from: date)
    rocket = try container.decode(Rocket.self, forKey: .rocket)
    details = try container.decode(String?.self, forKey: .details)
  }
  
  required init(realm: RLMRealm, schema: RLMObjectSchema) {
    super.init(realm: realm, schema: schema)
  }
  
  required init() {
    super.init()
  }
  
  required init(value: Any, schema: RLMSchema) {
    super.init(value: value, schema: schema)
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
