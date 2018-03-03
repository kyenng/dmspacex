//
//  LaunchViewModel.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

final class LaunchViewModel {
  let flightNumber = BehaviorRelay<String?>(value: nil)
  let launchDate = BehaviorRelay<String?>(value: nil)
  let rocketName = BehaviorRelay<String?>(value: nil)
  let details = BehaviorRelay<String?>(value: nil)
  let isDetailDisplay = BehaviorRelay<Bool>(value: false)
  
  private let disposeBag = DisposeBag()
  
  init(model: Launch) {
    flightNumber.accept("\(model.flightNumber)")
    rocketName.accept(model.rocket.rocketName)
    details.accept(model.details)
    isDetailDisplay
      .map { isDetail -> String in
        return isDetail
          ? DateFormatter.fullDateFormatter.string(from: model.launchDate)
          : DateFormatter.shortDateFormatter.string(from: model.launchDate)
      }
      .bind(to: launchDate)
      .disposed(by: disposeBag)
  }
  
  func setup(cell: LaunchBigCell) {
    flightNumber.bind(to: cell.flightNumberLabel.rx.text).disposed(by: disposeBag)
    launchDate.bind(to: cell.launchDateLabel.rx.text).disposed(by: disposeBag)
    rocketName.bind(to: cell.rocketNameLabel.rx.text).disposed(by: disposeBag)
    details.bind(to: cell.detailsLabel.rx.text).disposed(by: disposeBag)
    
    isDetailDisplay
      .subscribe(onNext: { isDetail in
        cell.rocketNameCenterYConstraint.priority = UILayoutPriority(rawValue: UILayoutPriority.RawValue(isDetail ? 749.0 : 751.0))
        cell.detailsLabel.isHidden = !isDetail
        
        if isDetail {
          cell.detailsLabel.alpha = 0
          UIView.animate(withDuration: 3, animations: {
            cell.detailsLabel.alpha = 1.0
          })
        }
        
      })
      .disposed(by: disposeBag)
  }
}
