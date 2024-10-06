//
//  ViewController.swift
//  Calculator
//
//  Created by Nursa Kusain on 28.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchPlus(_ sender: Any) {
        
        let a = textfield.text!
        let b = textfield2.text!
        
        if let numberA = Int(a), let numberB = Int(b) {
            let sum = numberA + numberB
            
            label.text = String(sum)
        }else{
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func touchMinus(_ sender: Any) {
        
        let a = textfield.text!
        let b = textfield2.text!
        
        if let numberA = Int(a), let numberB = Int(b) {
            let sum = numberA - numberB
            
            label.text = String(sum)
        }else{
            label.text = "Введите 2 числа"
        }
    }
        
    @IBAction func multiplay(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            
            return
        }
        
        let sum = numberA * numberB
        
        label.text = String(sum)
    }
    
    @IBAction func separate(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        
        if let numberA = Int(a), let numberB = Int(b) {
            let sum = numberA / numberB
            
            label.text = String(sum)
        }else{
            label.text = "Введите 2 числа"
        }
    }
    
}


