//
//  API+ViewController.swift
//  alexa-simulator
//
//  Created by Alex Cuello ortiz on 01/04/2017.
//  Copyright © 2017 Eironeia. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

extension ViewController {
    
    
    func sendTextToServer(text: String) {
        
        let headers:HTTPHeaders = ["Authorization": "Bearer 3f08f7795f2448029dbfd1b7fc98268d", "Content-Type": "application/json"]
        
        let parameters: Parameters = [
            "query": [
            "Show me the latest price of Apple"
            ],
            "lang": "en",
            "sessionId": "1234567890"
        ]
       
        
        Alamofire.request("https://api.api.ai/v1/query?v=20150910", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            
            if let dictionary = response.result.value as? Dictionary<String,AnyObject> {
                let json = JSON(dictionary)
                if let textToSpeech = json["result"]["fulfillment"]["speech"].string {
                    self.speakText(text: textToSpeech)
                }
            }
        }
        
    }
    
    
    
    

    
}
