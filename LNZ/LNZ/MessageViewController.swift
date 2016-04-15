//
//  MessageViewController.swift
//  LNZ
//
//  Created by Gabe Hege on 3/22/16.
//  Copyright © 2016 LNZ. All rights reserved.
//

import UIKit
import QuartzCore
class MessageViewController: UIViewController, UITableViewDelegate{
    
    var messageList:[String] = []//"Old Message", "New Message", "New New Message"]
    var ownership:[Int] = []//0, 0, 1]
    
    @IBOutlet weak var actionButton: UIBarButtonItem!
    var currentTitle:String = ""
    
    
    @IBAction func doneToMessageView(segue:UIStoryboardSegue) {
    }
    
    @IBAction func actionButtonFunction(sender: AnyObject) {
        if actionButton.title == "Join" {
            actionButton.title = "Member List"
        } else if actionButton.title == "Member List" {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("memberlist")
            self.presentViewController(vc, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.hidden = true
        
        
//        let nib1 = UINib(nibName: "ReceivedMessageTableViewCell", bundle: nil)
//        tableView.registerNib(nib1, forCellReuseIdentifier: "ReceivedMessageTableViewCell")
//        let nib2 = UINib(nibName: "SentMessageTableViewCell", bundle: nil)
//        tableView.registerNib(nib2, forCellReuseIdentifier: "SentMessageTableViewCell")
//        self.tableView.rowHeight = 44.0;
//        tableViewScrollToBottom(true)
//        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(MessageViewController.tableViewTapped))
//        self.tableView.addGestureRecognizer(tapGesture)
        let numberToolbar = UIToolbar(frame: CGRectMake(0, 0, self.view.frame.size.width, 50))
        numberToolbar.barStyle = UIBarStyle.Default
        let textView : UITextView = UITextView(frame : CGRect(x:0, y:0, width:300, height:32))
        textView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
        let textBarItem : UIBarButtonItem = UIBarButtonItem(customView:textView)

        numberToolbar.items = [
            textBarItem,
            UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil),
            UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: nil)]
        
        numberToolbar.sizeToFit()
    }
    
    override func viewWillAppear(animated: Bool) {
        NSNotificationCenter.defaultCenter().removeObserver(self)
        self.title = currentTitle
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
//            self.tableView.reloadData()
        })
    }
    
    override func viewWillDisappear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - TextField
    
    func animateViewMoving (up:Bool, moveValue :CGFloat){
        let movementDuration:NSTimeInterval = 0.3
        let movement:CGFloat = ( up ? -moveValue : moveValue)
        UIView.beginAnimations( "animateView", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(movementDuration )
        self.view.frame = CGRectOffset(self.view.frame, 0,  movement)
        UIView.commitAnimations()
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return messageList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if ownership[indexPath.row] == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ReceivedMessageTableViewCell", forIndexPath: indexPath) as! ReceivedMessageTableViewCell
            cell.messageLabel!.text = messageList[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("SentMessageTableViewCell", forIndexPath: indexPath) as! SentMessageTableViewCell
            cell.messageLabel!.text = messageList[indexPath.row]
            return cell
        }
    }
    
    func keyboardDoneButtonTapped (){
        
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
