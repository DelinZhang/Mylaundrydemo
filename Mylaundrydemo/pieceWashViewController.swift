//
//  pieceWashViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/3/29.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class pieceWashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func setupView(){
        self.navigationController?.navigationBarHidden = false
        self.navigationItem.title = "件洗"
        self.navigationController?.navigationBar.tintColor = UIColor.getbluewordColor()
        self.navigationItem.leftBarButtonItem?.image = UIImage(named: "1-1")
//        self.navigationController.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
