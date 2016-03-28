//
//  loginViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/3/27.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var phoneTextfile: UITextField!
    @IBOutlet weak var vericodeTextfile: UITextField!
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
        
        self.phoneTextfile.layer.borderWidth = 1.0
        self.phoneTextfile.layer.borderColor = UIColor.getLightBorderColor().CGColor
        self.vericodeTextfile.layer.borderWidth = 1.0
        self.vericodeTextfile.layer.borderColor = UIColor.getLightBorderColor().CGColor
        
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
