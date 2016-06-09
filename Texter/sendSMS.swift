//
//  sendSMS.swift
//  Texter
//
//  Created by Ramon Gomez on 6/9/16.
//  Copyright © 2016 Ramon Gomez. All rights reserved.
//

import Foundation

func sendSMS(phoneNumber: String, Message: String) {
    // Get registered at http://clockworksms.com and get an Api Key
    
    var clockworkSMSURLString = "https://api.clockworksms.com/http/send.aspx?"
        + "key=YOUR_API_KEY_GOES_HERE"
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