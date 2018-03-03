//
//  LaunchSmallCell.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 02/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit
import Reusable

class LaunchBigCell: UICollectionViewCell, Reusable {
  @IBOutlet weak var flightNumberLabel: UILabel!
  @IBOutlet weak var launchDateLabel: UILabel!
  @IBOutlet weak var rocketNameLabel: UILabel!
  @IBOutlet weak var detailsLabel: UILabel!  
  @IBOutlet weak var rocketNameCenterYConstraint: NSLayoutConstraint!
}
