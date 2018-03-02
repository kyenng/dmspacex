//
//  LauchCell.swift
//  DMSpaceX
//
//  Created by Kyen on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit
import Reusable

class LaunchCell: UICollectionViewCell, Reusable {
    @IBOutlet fileprivate weak var flightNumberLabel: UILabel!
    @IBOutlet fileprivate weak var launchDateLabel: UILabel!
    @IBOutlet fileprivate weak var rocketNameLabel: UILabel!
    
    func setup(viewModel: LaunchViewModel) {
      flightNumberLabel.text = viewModel.flightNumber
      launchDateLabel.text = viewModel.launchDate
      rocketNameLabel.text = viewModel.rocketName
    }
}
