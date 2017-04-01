//
//  ReadAudio+ViewController.swift
//  alexa-simulator
//
//  Created by Alex Cuello ortiz on 01/04/2017.
//  Copyright © 2017 Eironeia. All rights reserved.
//

import UIKit
import AVFoundation

extension ViewController {

    func performReadTextView() {
        myUtterance = AVSpeechUtterance(string: "Hello world holy molly")
        myUtterance.rate = 0.3
        synth.speak(myUtterance)
        
    }
}


