//
//  Page1MainMenu1ViewController.swift
//  All2Sale
//
//  Created by admin on 10/4/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1MainMenu1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell0 = tableView.dequeueReusableCell(withIdentifier: tableCell0)
//        return cell0!
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: tableCell0) as? Page1MainMenu1Cell0TableViewCell
                return cell0!
            } else {
                let cell1 = tableView.dequeueReusableCell(withIdentifier: tableCell1) as? Page1MainMenu1Cell1TableViewCell
                return cell1!
            }
        } else if indexPath.section == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: tableCell2)
            return cell2!
        } else {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: tableCell3) as? Page1MainMenu1Cell3TableViewCell
            return cell3!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 132
            } else {
                return 70
            }
        } else if indexPath.section == 1 {
            return 172
        } else if indexPath.section == 1 {
            return 172
        } else {
            return 220
        }
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0 {
//            return ""
//        } else if section == 1 {
//            return "New User Perks"
//        } else if section == 2 {
//            return "Featured Brands"
//        } else if section == 3{
//            return "Deals"
//        } else {
//            return "Store Collections"
//        }
//    }
//    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("DidScroll")
//    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.leastNormalMagnitude
        }
        return 24
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
