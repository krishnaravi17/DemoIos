//
//  DetailsViewController.swift
//  IosDemo
//
//  Created by Ravi on 18/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    
    var strlbl1:String!
    var strlbl2:String!
    var strImg:UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        Label1.text=strlbl1
        Label2.text=strlbl2
        imageView.image=strImg
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
