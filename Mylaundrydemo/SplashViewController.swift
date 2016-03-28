//
//  SplashViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/3/21.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController,UIScrollViewDelegate {

    private var scrollview:UIScrollView!
    private var loginBut:UIButton!
    private var pageContro:UIPageControl!
    private let images = ["0-引-1","0-引-2","0-引-3"]
    private let scrennsize:CGRect = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
        self.scrollview.delegate = self
        self.loginBut.addTarget(self, action: "enterMainsb", forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //创建scrollview
    private func setupViews(){
        self.scrollview = UIScrollView(frame: self.scrennsize)
        self.scrollview.contentSize = CGSize(width: self.scrennsize.width*CGFloat(self.images.count), height: self.scrennsize.height)
        for i in 0..<self.images.count{
            let imagView = UIImageView(frame: CGRect(x: CGFloat(i)*self.scrennsize.width, y: 0, width: self.scrennsize.width, height: self.scrennsize.height))
            self.scrollview.pagingEnabled = true
            self.scrollview.clipsToBounds = true
            self.scrollview.showsVerticalScrollIndicator = false
            self.scrollview.showsHorizontalScrollIndicator = false
            self.scrollview.bounces = false
            imagView.image = UIImage(named: self.images[i])
            self.scrollview.addSubview(imagView)
        }
        self.view.addSubview(self.scrollview)
        //添加pagecontro
        self.pageContro = UIPageControl(frame: CGRect(x: (self.scrennsize.width-60)/2, y: self.scrennsize.height - 40, width: 60, height: 40))
        self.pageContro.numberOfPages = 3
        self.pageContro.currentPage = 0
        self.pageContro.pageIndicatorTintColor = UIColor(red: 40/255.0, green: 204/255.0, blue: 252/255.0, alpha: 1.0)
        self.pageContro.currentPageIndicatorTintColor = UIColor(red: 255/255.0, green: 77/255.0, blue: 15/255.0, alpha: 1.0)
        self.pageContro.addTarget(self, action: "PageChanged", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(pageContro)
        //添加buton
        self.loginBut = UIButton(frame: CGRect(x: (self.scrennsize.width-150)/2, y: self.scrennsize.height - 70, width: 150, height: 35))
        self.loginBut.setImage(UIImage(named: "0-1-1"), forState: UIControlState.Normal)
        self.view.addSubview(loginBut)
        
    }
    //点击pagecontro切换
    func PageChanged(){
        let curentx = pageContro.currentPage
        self.scrollview.scrollRectToVisible(CGRect(x: CGFloat(curentx)*(self.scrennsize.width), y: 0, width: self.scrennsize.width, height: self.scrennsize.height), animated: true)
    }
    func scrollViewDidScroll(scrollView: UIScrollView){
        //变化的scrollview得到的值
        let curentx = self.scrollview.contentOffset.x/self.scrennsize.width
        pageContro.currentPage = Int(curentx)
    }
  
    func enterMainsb(){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("loginController")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
