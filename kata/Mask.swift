//
//  Mask.swift
//  kata
//
//  Created by Andrei Petric on 22/04/2016.
//  Copyright © 2016 andrei. All rights reserved.
//

import Foundation

enum Color {
  case Orange
  case White
}

func ==(lhs: Mask, rhs: Mask) -> Bool {
  if lhs.colors.count != rhs.colors.count {
    return false
  }
  
  for (index, lhsColor) in lhs.colors.enumerate() {
    if lhsColor != rhs.colors[index] {
      return false
    }
  }
  return true
}

struct Mask : Equatable {
  static let size = 11
  let colors: [Color]
  
  init(orangeIndices: Int...) {
    colors = (0..<Mask.size).map { index in return orangeIndices.contains(index) ? Color.Orange : Color.White }
  }
}
