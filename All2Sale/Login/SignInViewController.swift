//
//  SignInViewController.swift
//  All2Sale
//
//  Created by admin on 10/8/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    
    @IBAction func btnCancel(_ sender: AnyObject) {
//        self.dismiss(animated: true, completion: nil)
//        navigationController?.popViewController(animated: true)
//        navigationController?.popToRootViewController(animated: true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: tableCell0)
                return cell0!
            } else {
                let cell1 = tableView.dequeueReusableCell(withIdentifier: tableCell1)
                return cell1!
            }
        } else {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: tableCell2)
            return cell2!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // MARK: TableView Transparent
        self.tableView.backgroundColor = UIColor.clear
        
        // MARK: NavigationBar Transparent
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.isTranslucent = true
        
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
