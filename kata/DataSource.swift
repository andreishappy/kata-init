//
//  DataSource.swift
//  kata
//
//  Created by Andrei Petric on 21/04/2016.
//  Copyright © 2016 andrei. All rights reserved.
//

import UIKit

class DataSource : NSObject, UICollectionViewDataSource {
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as? Cell else {
      fatalError("Should be a Cell")
    }
    cell.configure(Mask(orangeIndices: 5))
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1000000
  }
}
