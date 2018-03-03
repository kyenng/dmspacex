//
//  ListViewController.swift
//  DMSpaceX
//
//  Created by Kyen NG on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit
import BouncyLayout
import AnimatedCollectionViewLayout
import YouTubePlayer
import RxCocoa
import RxSwift

class LauchesViewController: UIViewController {
  
  // MARK: - Property
  // MARK: IBOutlet
  @IBOutlet fileprivate weak var collectionView: UICollectionView!
  
  // MARK: Private

  fileprivate var viewModel = LaunchesViewModel()
  fileprivate var bounceLayout: BouncyLayout!
  fileprivate var animatedCollectionViewLayout: AnimatedCollectionViewLayout!
  
  fileprivate var cellSizeDetail: CGSize!
  fileprivate var cellSizeList: CGSize!
  
  static let player = YouTubePlayerView()
  
  // MARK: - Function
  
  // MARK: UIViewController life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // setup collection view
    cellSizeDetail = view.bounds.size
    cellSizeList = CGSize(width: (view.frame.size.width/2).rounded(.towardZero) - 5, height: 140)
    
    bounceLayout = BouncyLayout(style: .prominent)
    bounceLayout.scrollDirection = .vertical
    bounceLayout.minimumLineSpacing = 10
    bounceLayout.minimumInteritemSpacing = 10
    
    animatedCollectionViewLayout = AnimatedCollectionViewLayout()
    animatedCollectionViewLayout.scrollDirection = .horizontal
    animatedCollectionViewLayout.animator = PageAttributesAnimator()
    animatedCollectionViewLayout.minimumLineSpacing = 0
    animatedCollectionViewLayout.minimumInteritemSpacing = 0
    
    // update data from ws and realm
    viewModel.updateData { [weak self] in
      self?.collectionView.reloadData()
    }
    
    // setup video player
    LauchesViewController.player.delegate = self
    LauchesViewController.player.backgroundColor = .clear
    LauchesViewController.player.playerVars = ["playsinline": "1" as AnyObject,
                                               "modestbranding": "1" as AnyObject,
                                               "showinfo": "0" as AnyObject]
  }
  
  override var prefersStatusBarHidden: Bool {
    return true
  }
}

extension LauchesViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let isDetailDisplay = viewModel.toggleDetailDisplay()
    
    // setup collectionview layout
    collectionView.isPagingEnabled = isDetailDisplay ? true : false
    let collectionViewLayout = isDetailDisplay ? animatedCollectionViewLayout : bounceLayout
    collectionView.setCollectionViewLayout(collectionViewLayout, animated: true)
    collectionView.reloadData()
    
    // setup video
    if let cellVM = viewModel.dataSource?[indexPath.row] {
      cellVM.setupVideo()
    }
  }
}

extension LauchesViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return viewModel.dataSource?.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchCell.reuseIdentifier, for: indexPath)
    if let cellVM = viewModel.dataSource?[indexPath.row],
      let launchCell = cell as? LaunchCell {
      launchCell.setup(viewModel: cellVM)
    }
    return cell
  }
}

extension LauchesViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if viewModel.isDetailDisplay.value {
      return cellSizeDetail
    }
    return cellSizeList
  }
}

extension LauchesViewController: UIScrollViewDelegate {
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    guard viewModel.isDetailDisplay.value else { return }
    let currentIndex: Int = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    if let cellVM = viewModel.dataSource?[currentIndex] {
      cellVM.setupVideo()
    }
  }
}

extension LauchesViewController: YouTubePlayerDelegate {
  func playerReady(_ videoPlayer: YouTubePlayerView) {
    videoPlayer.play()
  }
}
