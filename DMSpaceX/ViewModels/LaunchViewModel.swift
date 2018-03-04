//
//  LaunchViewModel.swift
//  DMSpaceX
//
//  Created by Kyen NG on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

final class LaunchViewModel {
  // data static for cell
  let flightNumber: String
  let rocketName: String
  let details: String?
  let videoLink: URL?
  
  // data dynamic for cell: change without reload data, or reuse
  let launchDate = BehaviorRelay<String?>(value: nil)
  let isDetailDisplay = BehaviorRelay<Bool>(value: false)
  let urlToPlay = BehaviorRelay<URL?>(value: nil)
  
  private let disposeBag = DisposeBag()
  private let model: Launch
  
  init(model: Launch, isDetailDisplay: BehaviorRelay<Bool>?) {
    self.model = model
    flightNumber = "\(model.flightNumber)"
    rocketName = model.rocket.rocketName
    details = model.details ?? L10n.launchesNoDescription
    if let link = model.links?.videoLink {
      videoLink = URL(string: link)
    } else {
      videoLink = nil
    }
    
    isDetailDisplay?
      .bind(to: self.isDetailDisplay)
      .disposed(by: disposeBag)
    
    isDetailDisplay?
      .map { [weak self] isDetail -> String? in
        guard let date = self?.model.launchDate else { return nil }
        return isDetail
          ? DateFormatter.fullDateFormatter.string(from: date)
          : DateFormatter.shortDateFormatter.string(from: date)
      }
      .bind(to: launchDate)
      .disposed(by: disposeBag)
  }
  
  func setupVideo() {
    guard let videoLink = videoLink else { return }
    urlToPlay.accept(videoLink)
  }
}
