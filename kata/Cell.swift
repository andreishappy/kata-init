//
//  Cell.swift
//  kata
//
//  Created by Andrei Petric on 21/04/2016.
//  Copyright © 2016 andrei. All rights reserved.
//

import UIKit
import TABSwiftLayout

extension UIView {
  func kataColor(color: Color) {
    switch color {
    case .Orange:
      self.backgroundColor = UIColor(red: 253/255.0, green: 76/255.0, blue: 11/255.0, alpha: 1)
    case .White:
      self.backgroundColor = UIColor.whiteColor()
    }
  }
}

class Cell : UICollectionViewCell {
  private let stackView = UIStackView()
  
  override func awakeFromNib() {
    super.awakeFromNib()
    stackView.distribution = .FillEqually
    stackView.axis = .Horizontal
    
    for _ in 0..<Mask.size {
      stackView.addArrangedSubview(UIView())
    }

    contentView.addSubview(stackView)
    stackView.didMoveToSuperview()
    stackView.pin(.All, toView: self)
  }
  
  func configure(mask: Mask) {
    guard mask.colors.count == stackView.arrangedSubviews.count else {
      fatalError("The mask should be the same size as the subview array\n  Mask: \(mask.colors.count)\n  StackView:\(stackView.arrangedSubviews.count)")
    }
    
    for (index, color) in mask.colors.enumerate() {
      stackView.arrangedSubviews[index].kataColor(color)
    }
  }
}
