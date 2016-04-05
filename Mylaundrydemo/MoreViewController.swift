//
//  MoreViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/4/5.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
 
    


    let titles = ["联系客服","常见问题","服务范围","关于我们","用户协议","意见反馈"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.dataSource = self
        self.tableview.delegate = self
        self.automaticallyAdjustsScrollViewInsets = false
        self.setnavigation()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCellWithIdentifier("morecell", forIndexPath: indexPath)
        cell.imageView?.image = UIImage(named: "5-1-\(indexPath.row+1)")
        cell.textLabel?.text = self.titles[indexPath.row]
        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 55.0
    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let foottableview = UIView(frame: CGRectZero)
        return foottableview
    }
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        self.tableview.separatorInset = UIEdgeInsets.init()
    }
    func setnavigation(){
        self.navigationController?.navigationBar.tintColor = UIColor.getbluewordColor()
        self.navigationController?.navigationBar.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "更多"
    }
    
    

}
