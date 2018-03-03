//
//  LaunchesViewModel.swift
//  DMSpaceX
//
//  Created by Kyen on 03/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import RxCocoa
import RxSwift
import RealmSwift

final class LaunchesViewModel {
  
  var dataSource: [LaunchViewModel]?
  let isDetailDisplay = BehaviorRelay<Bool>(value: false)
  
  private let disposeBag = DisposeBag()
  private let service = LaunchesService(apiClient: SpaceXClient(configuration: Environment()))
  
  func updateData(completion: (() -> Void)?) {
    service.fetchLaunches(shouldSave: true)
      .debug("fetchLaunches")
      .subscribe()
      .disposed(by: disposeBag)
    
    service.getLaunches()
      .observeOn(MainScheduler.instance)
      .debug("getLaunches")
      .subscribe(onNext: { [weak self] launches in
        self?.updateData(with: launches)
        completion?()
        
      })
      .disposed(by: disposeBag)
  }
  
  func toggleDetailDisplay() -> Bool {
    isDetailDisplay.accept(!isDetailDisplay.value)
    return isDetailDisplay.value
  }

  private func updateData(with launches: Results<Launch>) {
    dataSource = launches.map { launch in
      let cellVM = LaunchViewModel(model: launch)
      // bind isDetailDisplay to all cell view models
      isDetailDisplay.bind(to: cellVM.isDetailDisplay).disposed(by: disposeBag)
      return cellVM
    }
  }
  
  
}
