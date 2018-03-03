//
//  ListViewController.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit
import BouncyLayout
import AnimatedCollectionViewLayout

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
  
  // MARK: - Function
  
  // MARK: UIViewController life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    cellSizeDetail = view.frame.size
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
    
    viewModel.updateData { [weak self] in
      self?.collectionView.reloadData()
    }
  }
  
  override var prefersStatusBarHidden: Bool {
    return true
  }
}

extension LauchesViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let isDetailDisplay = viewModel.toggleDetailDisplay()
    collectionView.isPagingEnabled = isDetailDisplay ? true : false
    let collectionViewLayout = isDetailDisplay ? animatedCollectionViewLayout : bounceLayout
    collectionView.setCollectionViewLayout(collectionViewLayout, animated: true)
    collectionView.reloadData()
  }
}

extension LauchesViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return viewModel.dataSource?.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchBigCell.reuseIdentifier, for: indexPath)
    if let cellVM = viewModel.dataSource?[indexPath.row],
      let launchBigCell = cell as? LaunchBigCell {
      cellVM.setup(cell: launchBigCell)
    }
    return cell
  }
}

extension LauchesViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if collectionViewLayout == animatedCollectionViewLayout {
      return cellSizeDetail
    }
    return cellSizeList
  }
}
