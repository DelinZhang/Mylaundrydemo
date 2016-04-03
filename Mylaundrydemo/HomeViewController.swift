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
    var washBVC : WashBagViewController?
    private let screensize:CGRect = UIScreen.mainScreen().bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupWash()
        
        

        // Do any additional setup after loading the view.
    }
   

    @IBAction func washBag(sender: UIButton) {
        if washBVC?.view.superview == nil
        {self.view.addSubview((washBVC?.view)!)
        }
        washBVC?.view.hidden = false
        print("1")
        
        
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
        
    }
    func setupWash(){
        washBVC = self.storyboard?.instantiateViewControllerWithIdentifier("WashBagVC") as? WashBagViewController
        self.addChildViewController(washBVC!)
        washBVC!.view.hidden = true
        self.view.addSubview((washBVC?.view)!)
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
