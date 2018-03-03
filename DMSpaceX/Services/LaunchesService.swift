//
//  LaunchesService.swift
//  DMSpaceX
//
//  Created by Kyen NG on 01/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxSwift
import RealmSwift

final class LaunchesService: APIService {
  
  // MARK: - Property
  public let apiClient: APIClient
  
  // MARK: Private
  private var realmNotificationToken: NotificationToken?
  
  // MARK: - Init
  init(apiClient: APIClient) {
    self.apiClient = apiClient
  }
  
  // MARK: - Function
  /// Fetch lauches from remote web service
  ///
  /// - Parameter shouldSave: activate or not save to realm
  /// - Returns: liste of launches (should not use when using realm, use getLaunches to get data instead)
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
  
  /// Get launches from local realm data base and observe change
  ///
  /// - Returns: liste of launches
  func getLaunches() -> Observable<Results<Launch>> {
   return Observable.create { [weak self] observer -> Disposable in
      let realm = try! Realm()
      let launches = realm.objects(Launch.self)
      self?.realmNotificationToken = launches.observe { realmCollectionChange in
        switch realmCollectionChange {
        case .initial(let launches):
          observer.onNext(launches)
        case .update(let launches, _, _, _):
          observer.onNext(launches)
        default:
          break
        }
      }
      return Disposables.create()
    }
  }
}

struct LaunchesRequest: APIRequest {
  let method = RequestType.GET
  let path = SpaceXRoute.launches.path
  let parameters = [String: String]()
}
