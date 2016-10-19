//
//  ViewController.swift
//  d00
//
//  Created by Gordon RASS-KWASI on 10/17/16.
//  Copyright © 2016 Gordon RASS-KWASI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Try to put button"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PressButton(sender: UIButton) {
        label.text = "Hello World !"
    }

}

