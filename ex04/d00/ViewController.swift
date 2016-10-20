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
    var valeur_a_stocker: Bool = false
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
        ajouter_au_nombre("0")
    }

    @IBAction func action_touch_1(sender: AnyObject) {
        ajouter_au_nombre("1")
    }
    
    @IBAction func action_touch_2(sender: AnyObject) {
        ajouter_au_nombre("2")
    }
    
    @IBAction func action_touch_3(sender: AnyObject) {
        ajouter_au_nombre("3")
    }
    @IBAction func action_touch_4(sender: AnyObject) {
        ajouter_au_nombre("4")
    }
    @IBAction func action_touch_5(sender: AnyObject) {
        ajouter_au_nombre("5")
    }
    @IBAction func action_touch_6(sender: AnyObject) {
        ajouter_au_nombre("6")
    }
    @IBAction func action_touch_7(sender: AnyObject) {
        ajouter_au_nombre("7")
    }
    @IBAction func action_touch_8(sender: AnyObject) {
        ajouter_au_nombre("8")
    }
    @IBAction func action_touch_9(sender: AnyObject) {
        ajouter_au_nombre("9")
    }
    @IBAction func action_touch_ac(sender: AnyObject) {
        calcul.text = "0"
    }
    
    @IBAction func action_touch_neg(sender: AnyObject) {
        print("pression touch neg")
        var valeur = Int(calcul.text!)!
        valeur = valeur * -1
        calcul.text = String(valeur)
        valeur_a_stocker = false
    }
    
    @IBAction func action_touch_fois(sender: AnyObject) {
        print("pression touch multiplication")
        self.op = Operation.Multi
        a = Int(calcul.text!)!
        valeur_a_stocker = true
        calcul.text = "0"
    }
    
    @IBAction func action_touch_division(sender: AnyObject) {
        print("pression touch division")
        self.op = Operation.Divsion
        a = Int(calcul.text!)!
        valeur_a_stocker = true
        calcul.text = "0"
    }
    
    @IBAction func action_touch_moins(sender: AnyObject) {
        print("pression touch moins")
        self.op = Operation.Soustraction
        a = Int(calcul.text!)!
        valeur_a_stocker = true
        calcul.text = "0"
    }
    
    @IBAction func action_touch_plus(sender: AnyObject) {
        print("pression touch plus")
         self.op = Operation.Addition
        a = Int(calcul.text!)!
        valeur_a_stocker = true
        calcul.text = "0"
    }
    
    @IBAction func action_touch_egal(sender: AnyObject) {
        print("pression touch egal")
        var resultat: Int = 0
        var overflow: (Int, Bool) = (0, false)
        
        var erreur: Bool = false
        
        if valeur_a_stocker == true {
            b = Int(calcul.text!)!
            switch op {
            case Operation.Multi:
                overflow = Int.multiplyWithOverflow(a, b)
                if overflow.1 == false {
                    resultat = overflow.0
                } else {
                    erreur = true
                }
            case Operation.Divsion:
                if (b != 0) {
                    overflow = Int.divideWithOverflow(a, b)
                    if overflow.1 == false {
                        resultat = overflow.0
                    } else {
                        erreur = true
                    }
                 resultat = a / b
                } else {
                    erreur = true
                }
            case Operation.Soustraction:
                overflow = Int.subtractWithOverflow(a, b)
                if overflow.1 == false {
                    resultat = overflow.0
                } else {
                    erreur = true
                }
            case Operation.Addition:
                overflow = Int.addWithOverflow(a, b)
                if overflow.1 == false {
                    resultat = overflow.0
                } else {
                    erreur = true
                }
            default:
                erreur = false
            }
            
            if (erreur == false) {
                calcul.text = String(resultat)
                op = Operation.Default
                a = 0
                b = 0
                valeur_a_stocker = false
            } else {
                calcul.text = "ERROR"
            }
        }
    }
    
    func ajouter_au_nombre(nombre: String) {
        var nombre_modifier: String
        
        switch calcul.text! {
            case "0":
                nombre_modifier = nombre
                calcul.text = nombre_modifier
            case "ERROR":
                nombre_modifier = nombre
                calcul.text = nombre_modifier
            default:
                nombre_modifier = nombre
                calcul.text = calcul.text! + nombre_modifier
        }
        check_int_max()
    }
    
    func check_int_max() {
        let number = Int(calcul.text!)
        if (number > Int.max || calcul.text?.characters.count >= 20) || (number < Int.min || calcul.text?.characters.count >= (20 - 1)) {
            calcul.text = "ERROR"
        }
    }
}

