//
//  ViewController.swift
//  d00
//
//  Created by Gordon RASS-KWASI on 10/17/16.
//  Copyright © 2016 Gordon RASS-KWASI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var op: Operation = Operation.Default
    var a: Int = 0
    var b: Int = 0
    
    @IBOutlet weak var calcul: UILabel!
    
    @IBOutlet weak var but_ac: UIButton!
    @IBOutlet weak var but_neg: UIButton!
    
    
    @IBOutlet weak var but_9: UIButton!
    @IBOutlet weak var but_8: UIButton!
    @IBOutlet weak var but_7: UIButton!
    @IBOutlet weak var but_6: UIButton!
    @IBOutlet weak var but_5: UIButton!
    @IBOutlet weak var but_4: UIButton!
    @IBOutlet weak var but_3: UIButton!
    @IBOutlet weak var but_2: UIButton!
    @IBOutlet weak var but_1: UIButton!
    @IBOutlet weak var but_0: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func action_touch_0(sender: AnyObject) {
        calcul.text = "0"
        print("pression touch 0")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }

    @IBAction func action_touch_1(sender: AnyObject) {
        calcul.text = "1"
        print("pression touch 1")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    
    @IBAction func action_touch_2(sender: AnyObject) {
        calcul.text = "2"
        print("pression touch 2")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    
    @IBAction func action_touch_3(sender: AnyObject) {
        calcul.text = "3"
        print("pression touch 3")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_4(sender: AnyObject) {
        calcul.text = "4"
        print("pression touch 4")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_5(sender: AnyObject) {
        calcul.text = "5"
        print("pression touch 5")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_6(sender: AnyObject) {
        calcul.text = "6"
        print("pression touch 6")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_7(sender: AnyObject) {
        calcul.text = "7"
        print("pression touch 7")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_8(sender: AnyObject) {
        calcul.text = "8"
        print("pression touch 8")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_9(sender: AnyObject) {
        calcul.text = "9"
        print("pression touch 9")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    @IBAction func action_touch_ac(sender: AnyObject) {
        print("pression touch ac")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    
    @IBAction func action_touch_neg(sender: AnyObject) {
        print("pression touch neg")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    
    @IBAction func action_touch_fois(sender: AnyObject) {
        print("pression touch multiplication")
        calcul.text = ecriture_de_nombre("0", calcul: calcul.text!)
    }
    
    @IBAction func action_touch_division(sender: AnyObject) {
        print("pression touch division")
    }
    
    @IBAction func action_touch_moins(sender: AnyObject) {
        print("pression touch moins")
    }
    
    @IBAction func action_touch_plus(sender: AnyObject) {
        print("pression touch plus")
    }
    
    @IBAction func action_touch_egal(sender: AnyObject) {
        print("pression touch egal")
    }
    
    func ecriture_de_nombre(nombre: String, calcul: String) -> String {
        var nombre_modifier: String
        if calcul == "0" {
            nombre_modifier = nombre
        } else {
            nombre_modifier = nombre
        }
        return nombre_modifier
    }
}

