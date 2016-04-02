//
//  pieceWashViewController.swift
//  Mylaundrydemo
//
//  Created by Delin on 16/3/29.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

import UIKit

class pieceWashViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    @IBOutlet weak var colection1: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
        colection1.dataSource = self
        colection1.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func setupView(){
       
        self.navigationController?.navigationBar.tintColor = UIColor.getbluewordColor()
        self.navigationItem.title = "件洗"
        
        
//        self.navigationItem.leftBarButtonItem?.image = UIImage(named: "1-1")
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let item = self.colection1.dequeueReusableCellWithReuseIdentifier("clothecell", forIndexPath: indexPath)
        return item
        
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
