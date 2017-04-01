//
//  UI+ViewController.swift
//  alexa-simulator
//
//  Created by Alex Cuello ortiz on 01/04/2017.
//  Copyright © 2017 Eironeia. All rights reserved.
//

import UIKit

extension ViewController {
    
    func setUI(status: SpeechStatus) {
        switch status {
        case .ready:
            microphoneButton.setImage(#imageLiteral(resourceName: "available"), for: .normal)
        case .recognizing:
            microphoneButton.setImage(#imageLiteral(resourceName: "stop"), for: .normal)
        case .unavailable:
            microphoneButton.setImage(#imageLiteral(resourceName: "unavailable"), for: .normal)
        }
    }
    
}
