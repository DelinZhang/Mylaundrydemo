//
//  UserViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/4/3.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userProfile: UIView!
    @IBOutlet weak var contentView: UIView!
    var screensize: CGRect = UIScreen.mainScreen().bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
//        self.addButons()
  
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupView(){
        self.navigationController?.navigationBar.barTintColor = UIColor.getbluewordColor()
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barStyle = .BlackTranslucent
    
    }
//    func addButons(){
//        let images = ["","","","",""]
//        let width = CGRectGetWidth(self.view.frame)/3
//        let hight = CGRectGetWidth(self.view.frame)/3 + 80
//        var index = 0
//        var orgiony = CGRectGetMaxX(self.userProfile.frame)
//        for image in images{
//            let butoview = UIView(frame: CGRectMake(width * CGFloat(index),
//                                                    orgiony,
//                                                    width,
//                                                    hight))
//            let butn = UIButton(type: .Custom)
//            let label = UILabel(frame: CGRectMake(0,0,CGRectGetWidth(butoview.frame),CGRectGetHeight(butoview.frame)-30))
//            self.contentView.addSubview(butn)
//            self.contentView.addSubview(label)
//            
//            
//        }
//        
    }
    

    


