//
//  LaunchesViewModel.swift
//  DMSpaceX
//
//  Created by Kyen NG on 03/03/2018.
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
  
  func refresh() {
    service.fetchLaunches(shouldSave: true)
      .subscribe()
      .disposed(by: disposeBag)
  }
  
  func updateData(completion: (() -> Void)?) {
    service.getLaunches()
      .observeOn(MainScheduler.instance)
      .subscribe(onNext: { [weak self] launches in
        self?.updateData(with: launches)
        completion?()
      })
      .disposed(by: disposeBag)
    
    refresh()
  }
  
  func toggleDetailDisplay() -> Bool {
    isDetailDisplay.accept(!isDetailDisplay.value)
    return isDetailDisplay.value
  }

  private func updateData(with launches: Results<Launch>) {
    dataSource = launches.map { launch in
      let cellVM = LaunchViewModel(model: launch, isDetailDisplay: isDetailDisplay)
      return cellVM
    }
  }
}
