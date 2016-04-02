//
//  HomeViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/3/28.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private var placename:UILabel?
    var tilleimages: UIImageView?
    var title1view : UIView?
    private let screensize:CGRect = UIScreen.mainScreen().bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()

        // Do any additional setup after loading the view.
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupView(){
        
       self.tilleimages = UIImageView(frame: CGRect(x: (self.screensize.width-78)/2, y: 10, width: 78, height: 18))
        self.tilleimages!.image = UIImage(named: "6")
        self.navigationItem.titleView = tilleimages
//        let placeimages: UIImageView = UIImageView(frame: CGRect(x: 42, y: 20, width: 11, height: 7))
//        placeimages.image = UIImage(named: "7-1")
//        self.navigationController?.navigationBar.addSubview(placeimages)
        let placeleftbuto:UIBarButtonItem = UIBarButtonItem(title: "成都", style: UIBarButtonItemStyle.Done, target: nil
            , action: "clickplacebtu")
        placeleftbuto.tintColor = UIColor.getbluewordColor()
        self.navigationItem.leftBarButtonItem = placeleftbuto
        
        
    }
    private func clickplacebtu(){
        print("1")
        
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
