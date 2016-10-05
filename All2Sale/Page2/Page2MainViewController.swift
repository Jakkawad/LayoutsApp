//
//  Page2MainViewController.swift
//  All2Sale
//
//  Created by admin on 10/4/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page2MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1{
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell0 = tableView.dequeueReusableCell(withIdentifier: tableCell0)
//        return cell0!
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: tableCell0)
            return cell0!
        } else if indexPath.section == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: tableCell1)
            return cell1!
        } else {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: tableCell2) as? Page2MainCell2TableViewCell
            return cell2!
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        } else if section == 1 {
            return "Search History"
        } else {
            return "Recently Viewed Items"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 44
        } else if indexPath.section == 1 {
            return 44
        } else {
            return 100
        }
    }
    
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
