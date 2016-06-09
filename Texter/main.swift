import Foundation

print("What text do you want to send?")
guard let userTextMessage = readLine(stripNewline: true) else {exit(0)}

print("Enter the number to whom the text should be send:")
guard let userPhoneNumber = readLine(stripNewline: true) else {exit(0)}

sendSMS(userPhoneNumber, Message: userTextMessage)


