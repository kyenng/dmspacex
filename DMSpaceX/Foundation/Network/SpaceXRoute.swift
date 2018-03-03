//
//  SpaceXRoute.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

public enum SpaceXRoute: APIRoute {
  case launches, companyInfo, rocketInfo(name: String)
  
  public var path: String {
    switch self {
    case .launches:
      return "launches/"
    case .companyInfo:
      return "info/"
    case .rocketInfo(let name):
      return "rockets/\(name)"
    }
  }
}
