//
//  SegmentViewController.swift
//  IosDemo
//
//  Created by Ravi on 23/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBAction func valuechanged(_ sender: UISegmentedControl) {
        
        if(seg.selectedSegmentIndex==0){
            lbl.text="facebook click!!"
            
        }else if(seg.selectedSegmentIndex==1){
            
            lbl.text="Whatsapp click!!"
            
        }else if(seg.selectedSegmentIndex==2){
            
             lbl.text="Insta click!!"
            
        }else if(seg.selectedSegmentIndex==3){
            
             lbl.text="Orkut click!!"
            
        }
        
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
