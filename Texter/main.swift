import Foundation

print("What text do you want to send?")
guard let userTextMessage = readLine(stripNewline: true) else {exit(0)}

print("Enter the number to whom the text should be send:")
guard let userPhoneNumber = readLine(stripNewline: true) else {exit(0)}

// Clock Work SMS API Key: 5f8cf06e5652023cfa53e8f9c23a400b87d7a4ef

var clockworkSMSURLString = "https://api.clockworksms.com/http/send.aspx?"
                        + "key=5f8cf06e5652023cfa53e8f9c23a400b87d7a4ef"
                        + "&to=" + userPhoneNumber
                        + "&content=" + userTextMessage

clockworkSMSURLString = clockworkSMSURLString.stringByReplacingOccurrencesOfString(" ", withString: "+")

if let clockworkSMSURL = NSURL(string: clockworkSMSURLString) {

    if let responseData = NSData(contentsOfURL: clockworkSMSURL) {
        
        let responseString = String(data: responseData, encoding: NSUTF8StringEncoding)
            print(responseString)
    }
}

