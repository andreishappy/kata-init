//
//  ViewController.swift
//  kata
//
//  Created by Andrei Petric on 18/04/2016.
//  Copyright © 2016 andrei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  private let dataSource = DataSource()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let layout = UICollectionViewFlowLayout()
    layout.minimumLineSpacing = 0
    layout.itemSize = CGSizeMake(width(), 40)
    collectionView.dataSource = dataSource
    collectionView.contentInset = UIEdgeInsetsZero
    collectionView.collectionViewLayout = layout
    collectionView.showsVerticalScrollIndicator = false
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func width() -> CGFloat {
    let screenRect = UIScreen.mainScreen().bounds
    let screenWidth = screenRect.size.width;
    return screenWidth
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
