//
//  DataManager.swift
//  LNZ
//
//  Created by Gabe Hege on 3/30/16.
//  Copyright © 2016 LNZ. All rights reserved.
//
import SwiftyJSON

class DataManager {
    
    var dataList:NSMutableArray!
    //let deviceName = UIDevice.currentDevice().identifierForVendor!.UUIDString
    let path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist")
    
    init() {
        self.dataList = []
    }
    
    
    func makeRequest(request:NSMutableURLRequest, finished:(NSMutableArray)->()){
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request, completionHandler: {data,response,error->Void in
            do {
                if data != nil {
                    if let json : NSMutableArray? =  try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers) as? NSMutableArray {
                        for index in 0 ..< json!.count {
                            if let dict  = json![index] as? NSMutableDictionary{
                                if dict["_id"] != nil {
                                    if self.dataList.contains({$0["_id"] as! String == dict["_id"] as! String} ){
                                        for j in 0 ..< self.dataList.count {
                                            if ((self.dataList[j] as! NSMutableDictionary)["_id"] as! String == dict["_id"] as! String){
                                                self.dataList[j] = dict
                                            }
                                        }
                                    } else {
                                        self.dataList.addObject(dict)
                                    }
                                }
                            }
                        }
                    }
                }
                finished(self.dataList)
            } catch {
                print("Server is down!")
            }
        })
        task.resume()
    }
    
    func getFriends(finished:(NSMutableArray) -> ()){
        self.dataList = NSMutableArray()
        let dict = NSDictionary(contentsOfFile: path!)
        let urlBase = dict!["urlBase"] as! String
        let url:NSURL = NSURL(string: urlBase + "image/")!
        let request: NSMutableURLRequest = NSMutableURLRequest(URL:url)
        //request.HTTPMethod = "POST"
        makeRequest(request, finished: finished)
        
    }
}