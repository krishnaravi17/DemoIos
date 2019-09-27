//
//  MenuTableViewCell.swift
//  IosDemo
//
//  Created by Ravi on 26/09/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
