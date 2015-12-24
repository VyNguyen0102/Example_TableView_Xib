//
//  SimpleTableViewCell.swift
//  Table View With Xib
//
//  Created by VyNV on 12/23/15.
//  Copyright © 2015 VyNV. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {
    
    static let cellNibName = "SimpleTableViewCell"
    static let cellIdentifier = "SimpleTableViewCell"
    
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
