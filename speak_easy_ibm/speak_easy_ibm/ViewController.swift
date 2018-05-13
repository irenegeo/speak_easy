//
//  ViewController.swift
//  speak_easy_ibm
//
//  Created by Irene Georgieva on 12/31/17.
//  Copyright © 2017 Annie. All rights reserved.
//

import UIKit
import SpeechToTextV1

class ViewController: UIViewController {

    let speechToText = SpeechToText(username: "b418bd8b-50b7-4622-b243-f50b2ee7ac11", password: "oy3jwVu8NIK8")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

