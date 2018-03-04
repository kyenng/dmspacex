//
//  UIView+SpaceX.swift
//  DMSpaceX
//
//  Created by Kyen NG on 03/03/2018.
//  Copyright © 2018 kien.ng@icloud.com. All rights reserved.
//

import UIKit

extension UIView {
  func fill(with subView: UIView) {
    subviews.forEach { $0.removeFromSuperview() }
    addAndFill(with: subView)
  }
  
  func addAndFill(with subView: UIView) {
    addSubview(subView)
    
    subView.translatesAutoresizingMaskIntoConstraints = false
    
    subView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    subView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    subView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    subView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  
  func appear(duration: TimeInterval) {
    alpha = 0
    isHidden = false
    UIView.animate(withDuration: duration) { [weak self] in
      self?.alpha = 1.0
    }
  }
}
