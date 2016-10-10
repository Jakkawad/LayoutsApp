//
//  Page3MainViewController.swift
//  All2Sale
//
//  Created by admin on 10/4/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page3MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var titleArray = ["Shop name", "Product detail", "Price"]
    var isLogin:Bool = true//false
    
    @IBOutlet weak var tableView:UITableView!
    
    // MARK: Check Login
    
    func checkLogin() {
        if isLogin == true {
            print("Login")
        } else {
            let newVC = storyboard?.instantiateViewController(withIdentifier: "ModalViewController")
            tabBarController?.present(newVC!, animated: true)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: tableCell0)
        cell0?.textLabel?.text = titleArray[indexPath.row]
        return cell0!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.leastNormalMagnitude
        }
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 44
        } else if indexPath.row == 1 {
            return 200
        } else {
            return 100
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        checkLogin()
        
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
