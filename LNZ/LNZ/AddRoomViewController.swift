//
//  AddRoomViewController.swift
//  LNZ
//
//  Created by Gabe Hege on 3/22/16.
//  Copyright © 2016 LNZ. All rights reserved.
//

import UIKit

class AddRoomViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    @IBAction func button1Action(sender: AnyObject) {
        infoText.text = "sad"
    }
    @IBAction func button2Action(sender: AnyObject) {
        infoText.text = "happy"
    }
    @IBAction func button3Action(sender: AnyObject) {
        infoText.text = "3"
    }
    @IBAction func button4Action(sender: AnyObject) {
        infoText.text = "2"

    }
    
    @IBAction func button5Action(sender: AnyObject) {
        infoText.text = "1"

    }
    
    
    
    @IBOutlet weak var statusBox: UITextField!
    @IBOutlet weak var infoText: UILabel!
    
    
//    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoText.text = " "
//        button1.setTitle("jessy", forState: UIControlState.Normal)
//        self.navigationController?.navigationBar.tintColor = UIColor.darkGrayColor()//Helper.uicolorFromHex(0x616161)
//        self.navigationController?.navigationBar.barTintColor = Helper.uicolorFromHex(0xf1c40f)//(0xFCDC3B)

//        image.image = UIImage(named: "mit.jpg")
//        image.layer.borderWidth = 1
//        image.layer.masksToBounds = false
//        image.layer.borderColor = UIColor.blackColor().CGColor
//        image.layer.cornerRadius = image.frame.height/2
//        image.clipsToBounds = true
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
