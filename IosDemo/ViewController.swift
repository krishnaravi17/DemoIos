//
//  ViewController.swift
//  IosDemo
//
//  Created by Ravi on 16/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {  //,UITableViewDelegate,UITableViewDataSource
    
//    var arre1=["RAVI","KRISHNA"]
//    var arre2=["ravi","krishna"]
//
//    var arrimage = [UIImage(named:"Launcher"),UIImage(named:"Launcher")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func intentToTableView(_ sender: Any) {
        
         ShowToast(message: "Table View!!")
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "TableviewMainViewController") as! TableviewMainViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    
    @IBAction func moveToSwitch(_ sender: Any) {
       
        ShowToast(message: "Switch!!")
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "SwitchViewController") as! SwitchViewController
        self.present(newViewController, animated: true, completion: nil)
        
    }

    @IBAction func CollectionView(_ sender: Any) {
        
         ShowToast(message: "Collection View!!")
        
        
    }
    
    @IBAction func Stepper(_ sender: Any) {
        
         ShowToast(message: "Stepper!!")
        
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "StepperViewController") as! StepperViewController
        self.present(newViewController, animated: true, completion: nil)
        
        
        
    }
    
    
    @IBAction func Segment(_ sender: Any) {
        
        ShowToast(message: "SegmentViewController!!")
        
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "SegmentViewController") as! SegmentViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
    
}



extension UIViewController {
    
    func ShowToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        // toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    
}
