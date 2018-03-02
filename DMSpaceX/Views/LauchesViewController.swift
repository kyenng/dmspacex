//
//  ListViewController.swift
//  DMSpaceX
//
//  Created by Kyen on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit
import RxSwift
import RealmSwift

class LauchesViewController: UIViewController {
  
  // MARK: - Property
  // MARK: IBOutlet
  @IBOutlet fileprivate weak var collectionView: UICollectionView!
  
  // MARK: Private
  private let disposeBag = DisposeBag()
  private let service = LaunchesService(apiClient: SpaceXClient(configuration: Environment()))
  fileprivate var dataSource: [LaunchViewModel]?
  
  // MARK: - Function
  
  // MARK: UIViewController life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    service.fetchLaunches(shouldSave: true)
      .debug("fetchLaunches")
      .subscribe()
      .disposed(by: disposeBag)
    
    service.getLaunches()
      .observeOn(MainScheduler.instance)
      .debug("getLaunches")
      .subscribe(onNext: { [weak self] launches in
        self?.updateData(with: launches)
      })
      .disposed(by: disposeBag)
  }
  
  // MARK: Private
  private func updateData(with launches: Results<Launch>) {
    dataSource = launches.map { LaunchViewModel(model: $0) }
    collectionView.reloadData()
  }
}

extension LauchesViewController: UICollectionViewDataSource, UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return dataSource?.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchCell.reuseIdentifier, for: indexPath) as? LaunchCell
    if let vm = dataSource?[indexPath.row] {
      cell?.setup(viewModel: vm)
    }
    return cell ?? UICollectionViewCell()
  }
}
