//
//  Page1MainMenu1Cell3TableViewCell.swift
//  All2Sale
//
//  Created by admin on 10/5/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1MainMenu1Cell3TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    let gridFlowLayout = GridViewFlowLayout()
    
    var isGridFlowLayoutUsed: Bool = false {
        didSet {
            //listButton.alpha = (isGridFlowLayoutUsed == true) ? 0.9 : 1.0
            //gridButton.alpha = (isGridFlowLayoutUsed == true) ? 1.0 : 0.9
        }
    }
    
    @IBOutlet weak var collectionView:UICollectionView!
    
    func setupGrid() {
        self.collectionView.collectionViewLayout.invalidateLayout()
        self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: false)
    }
    
    func setupInitialLayout() {
        isGridFlowLayoutUsed = true
        collectionView.collectionViewLayout = gridFlowLayout
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: tableCell0, for: indexPath)
        return cell0
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupGrid()
        isGridFlowLayoutUsed = true
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
