//
//  Helper.swift
//  LNZ
//
//  Created by Gabe Hege on 3/23/16.
//  Copyright © 2016 LNZ. All rights reserved.
//

import Foundation
import UIKit

class Helper {
    
    class func uicolorFromHex(rgbValue:UInt32)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        return UIColor(red:red, green:green, blue:blue, alpha:1.0)
    }
}