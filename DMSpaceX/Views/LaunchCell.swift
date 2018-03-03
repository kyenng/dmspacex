//
//  LaunchSmallCell.swift
//  DMSpaceX
//
//  Created by Kyen NG on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit
import Reusable
import YouTubePlayer
import RxCocoa
import RxSwift

class LaunchCell: UICollectionViewCell, Reusable {
  @IBOutlet fileprivate weak var flightNumberLabel: UILabel!
  @IBOutlet fileprivate weak var launchDateLabel: UILabel!
  @IBOutlet fileprivate weak var rocketNameLabel: UILabel!
  @IBOutlet fileprivate weak var detailsLabel: UILabel!
  @IBOutlet fileprivate weak var rocketNameCenterYConstraint: NSLayoutConstraint!
  @IBOutlet fileprivate weak var videoContainerView: UIView!
  
  private var disposeBag = DisposeBag()
  
  override func prepareForReuse() {
    super.prepareForReuse()
    disposeBag = DisposeBag()
  }
  
  func setup(viewModel: LaunchViewModel) {
    
    flightNumberLabel.text = viewModel.flightNumber
    rocketNameLabel.text = viewModel.rocketName
    detailsLabel.text = viewModel.details
      
    viewModel.launchDate.bind(to: launchDateLabel.rx.text).disposed(by: disposeBag)
    
    viewModel.isDetailDisplay
      .subscribe(onNext: { [weak self] isDetailDisplay in
        self?.rocketNameCenterYConstraint.priority = UILayoutPriority(isDetailDisplay ? 749 : 751 )
        if isDetailDisplay {
          self?.detailsLabel.appear(duration: 3)
        } else {
          self?.videoContainerView.isHidden = true
          self?.detailsLabel.isHidden = true
        }
      })
      .disposed(by: disposeBag)
    
    Observable.combineLatest(viewModel.isDetailDisplay.asObservable(), viewModel.urlToPlay.asObservable())
      .debug("play video")
      .subscribe(onNext: { [weak self] isDetailDisplay, urlToPlay in
        guard isDetailDisplay,
          let videoLink = urlToPlay else { return }
        
        self?.videoContainerView.fill(with: LauchesViewController.player)
        self?.videoContainerView.appear(duration: 1)
        LauchesViewController.player.loadVideoURL(videoLink)
      })
      .disposed(by: disposeBag)
  }
}
