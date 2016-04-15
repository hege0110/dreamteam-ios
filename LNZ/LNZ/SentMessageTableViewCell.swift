//
//  SentMessageTableViewCell.swift
//  LNZ
//
//  Created by Gabe Hege on 3/24/16.
//  Copyright © 2016 LNZ. All rights reserved.
//

import UIKit

class SentMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        messageLabel.layer.masksToBounds = false
        messageLabel.layer.cornerRadius = 5
        messageLabel.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
