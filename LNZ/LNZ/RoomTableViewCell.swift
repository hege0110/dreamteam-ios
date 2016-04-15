//
//  RoomTableViewCell.swift
//  LNZ
//
//  Created by Gabe Hege on 3/22/16.
//  Copyright © 2016 LNZ. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var roomName: UILabel!
    @IBOutlet weak var resp3: UIButton!
    @IBOutlet weak var resp2: UIButton!
    @IBOutlet weak var resp1: UIButton!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        picture.image = UIImage(named: "mit.jpg")
        picture.layer.borderWidth = 1
        picture.layer.masksToBounds = false
        picture.layer.borderColor = UIColor.blackColor().CGColor
        picture.layer.cornerRadius = picture.frame.height/2
        picture.clipsToBounds = true
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
