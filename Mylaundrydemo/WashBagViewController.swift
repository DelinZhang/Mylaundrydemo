//
//  WashBagViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/4/2.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class WashBagViewController: UIViewController {


    @IBOutlet weak var washbagView1: UIView!
    @IBOutlet weak var backgroundView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundView.backgroundColor = UIColor.blackColor()
        self.backgroundView.alpha = 0.3
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func hidewashbag(sender: AnyObject) {
        if self.view.superview != nil{
            self.view.removeFromSuperview()
        }

        
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
