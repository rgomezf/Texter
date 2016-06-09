//
//  sendSMS.swift
//  Texter
//
//  Created by Ramon Gomez on 6/9/16.
//  Copyright © 2016 Ramon Gomez. All rights reserved.
//

import Foundation

func sendSMS(phoneNumber: String, Message: String) {
    // code goes here
    // Clock Work SMS API Key: 5f8cf06e5652023cfa53e8f9c23a400b87d7a4ef
    
    var clockworkSMSURLString = "https://api.clockworksms.com/http/send.aspx?"
        + "key=5f8cf06e5652023cfa53e8f9c23a400b87d7a4ef"
        + "&to=" + phoneNumber
        + "&content=" + Message
    
    clockworkSMSURLString = clockworkSMSURLString.stringByReplacingOccurrencesOfString(" ", withString: "+")
    
    if let clockworkSMSURL = NSURL(string: clockworkSMSURLString) {
        
        if let responseData = NSData(contentsOfURL: clockworkSMSURL) {
            
            let responseString = String(data: responseData, encoding: NSUTF8StringEncoding)
            print(responseString)
        }
    }
    
}