//
//  MenuViewController.swift
//  IosDemo
//
//  Created by Ravi on 26/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var arre1=["RAVI","KRISHNA"]
    
    var arrimage = [UIImage(named:"Launcher"),UIImage(named:"Launcher")]
    
    var isSideViewOpen: Bool = false
    
    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var SideBarview: UIView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arre1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MenuTableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell")as! MenuTableViewCell
        
        cell.label.text=arre1[indexPath.row]
        cell.img.image=arrimage[indexPath.row]
  
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        TableView.isHidden = true
        SideBarview.backgroundColor = UIColor.groupTableViewBackground
        isSideViewOpen = false
         SideBarview.isHidden = true
    }


    @IBAction func barButton(_ sender: UIBarButtonItem) {
        SideBarview.isHidden = false
        TableView.isHidden = false
        self.view.bringSubviewToFront(TableView)
        if !isSideViewOpen{
            isSideViewOpen = true//0
            TableView.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
            SideBarview.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)//1
            TableView.frame = CGRect(x: 0, y: 88, width: 259, height: 499)
            SideBarview.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
            UIView.commitAnimations()
            
        }else{
            SideBarview.isHidden = true
            TableView.isHidden = true
            isSideViewOpen = false
            TableView.frame = CGRect(x: 0, y: 88, width: 259, height: 499)
            SideBarview.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            TableView.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
            SideBarview.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
            UIView.commitAnimations()
        }
        
        
        
        
        
        
    }
    

  
    
    
}
