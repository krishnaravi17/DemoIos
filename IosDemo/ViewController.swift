//
//  ViewController.swift
//  IosDemo
//
//  Created by Ravi on 16/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arre1=["RAVI","KRISHNA"]
    var arre2=["ravi","krishna"]
    
    var arrimage = [UIImage(named:"Launcher"),UIImage(named:"Launcher")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return arre2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        
        UITableViewCell {
        
        let cell:TableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell")as! TableViewCell
        
        cell.lbl1.text=arre1[indexPath.row]
        cell.lbl2.text=arre2[indexPath.row]
        cell.image1.image=arrimage[indexPath.row]
        
//        let cell=tableView.dequeueReusableCell(withIdentifier: "cell")
//
//        cell?.textLabel?.text=arre1[indexPath.row]
//        cell?.detailTextLabel?.text=arre2[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailsViewController=self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController")as!DetailsViewController
        
        detail.strlbl1=arre1[indexPath.row]
        detail.strlbl2=arre2[indexPath.row]
        detail.strImg=arrimage[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    

}

