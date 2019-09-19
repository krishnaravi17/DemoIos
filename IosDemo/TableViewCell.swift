//
//  TableViewCell.swift
//  IosDemo
//
//  Created by Ravi on 17/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    

    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var image1: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
