//
//  StepperViewController.swift
//  IosDemo
//
//  Created by Ravi on 23/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    
    @IBOutlet weak var lbl: UILabel!
    
   
    @IBAction func clicklistener(_ sender: UIStepper) {
        lbl.text=sender.value.description
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
