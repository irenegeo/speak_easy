//
//  ViewController.swift
//  speak_easy
//
//  Created by Irene Georgieva on 12/29/17.
//  Copyright © 2017 Annie. All rights reserved.
//

import UIKit
import Speech

class ViewController: UIViewController {

    
    @IBOutlet weak var displayScore: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var microphoneButton: UIButton!
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))! //1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        microphoneButton.isEnabled = false  //2
        
        //speechRecognizer.delegate = self  //3

        SFSpeechRecognizer.requestAuthorization { (authStatus) in  //4
            
            var isButtonEnabled = false
            
            switch authStatus {  //5
            case .authorized:
                isButtonEnabled = true
                
            case .denied:
                isButtonEnabled = false
                print("User denied access to speech recognition")
                
            case .restricted:
                isButtonEnabled = false
                print("Speech recognition restricted on this device")
                
            case .notDetermined:
                isButtonEnabled = false
                print("Speech recognition not yet authorized")
            }
            
            OperationQueue.main.addOperation() {
                self.microphoneButton.isEnabled = isButtonEnabled
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func StartRecording(_ sender: Any) {
    }
    
    @IBAction func calculateScore(_ sender: Any) {
       displayScore.text = "10"
    }

    @IBAction func microphoneTapped(_ sender: AnyObject) {
        
    }
}

