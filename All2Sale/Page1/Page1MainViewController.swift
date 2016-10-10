//
//  Page1MainViewController.swift
//  All2Sale
//
//  Created by admin on 10/4/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import PageMenu

class Page1MainViewController: UIViewController {

    var pageMenu: CAPSPageMenu?
    
    func setupPageMenu() {
//        self.title = "PAGE MENU"
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orange]
        self.tabBarController?.tabBar.backgroundColor = UIColor.white
        
        //self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "<-", style: UIBarButtonItemStyle.Done, target: self, action: "didTapGoToLeft")
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "->", style: UIBarButtonItemStyle.Done, target: self, action: "didTapGoToRight")
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        var controllerArray : [UIViewController] = []
        
        let controller1 = mainStoryboard.instantiateViewController(withIdentifier: "PageMenuStory1") as! Page1MainMenu1ViewController
        //controller1.parentNavigationController = self.navigationController
        controller1.title = "WHAT'S NEW"
        controllerArray.append(controller1)
        
        let controller2 = mainStoryboard.instantiateViewController(withIdentifier: "PageMenuStory2") as! Page1MainMenu2ViewController
        //controller1.parentNavigationController = self.navigationController
        controller2.title = "JUST FOR YOU"
        controllerArray.append(controller2)
        
        //        let controller3 = mainStoryboard.instantiateViewControllerWithIdentifier("Menu3Story") as! Menu3ViewController
        //        //controller1.parentNavigationController = self.navigationController
        //        controller3.title = "Menu3"
        //        controllerArray.append(controller3)
        //
        //        let controller4 = mainStoryboard.instantiateViewControllerWithIdentifier("Menu4Story") as! Menu4ViewController
        //        controller4.title = "Menu4"
        //        controllerArray.append(controller4)
        
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor.white),
//            .scrollMenuBackgroundColor(UIColor(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1.0)),
            .viewBackgroundColor(UIColor.white),
            .selectionIndicatorColor(UIColor.black),
            .bottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .menuHeight(40.0),
            .menuItemWidth(50.0),
            .centerMenuItems(true),
            .useMenuLikeSegmentedControl(true),
            .selectedMenuItemLabelColor(UIColor.black),
            .unselectedMenuItemLabelColor(UIColor.black),
            
        ]
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        
        
//        self.extendedLayoutIncludesOpaqueBars = NO;
//        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars = false
//        self.edgesForExtendedLayout = UIRectEdge
        self.edgesForExtendedLayout = UIRectEdge.top
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMove(toParentViewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupPageMenu()
        
        

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
