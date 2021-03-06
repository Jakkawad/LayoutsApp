//
//  Page1MainMenu2ViewController.swift
//  All2Sale
//
//  Created by admin on 10/4/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1MainMenu2ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
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
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: tableCell0, for: indexPath)
        return cell0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupGrid()
        isGridFlowLayoutUsed = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
        // MARK: - Navigation
    
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        }
    */
    
}
