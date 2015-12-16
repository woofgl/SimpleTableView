//
//  SimpleTableCell.swift
//  SimpleTableView
//
//  Created by woofgl on 15/12/16.
//  Copyright © 2015年 woofgl. All rights reserved.
//

import UIKit

class SimpleTableCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var prepTimeLabel: UILabel!
    
    @IBOutlet var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
