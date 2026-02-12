//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
let apiKey = "35c3e1ae-1c36-471b-9ed0-b8085aebeaa2"
if let encodedData = apiKey.data(using: .utf8)?.base64EncodedString() {
    print("Encoded API Key: \(encodedData)") // Store this in the app
}
