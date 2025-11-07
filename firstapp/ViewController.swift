//
//  ViewController.swift
//  firstapp
//
//  Created by Kanat Khairushin on 05.11.2025.
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

    @IBAction func touched(_ sender: Any) {
        //label.text = textfield.text
        let a = textfield.text!
        let b = textfield2.text!
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA + numberB
            label.text = String(sum)
        }else {
            label.text = "введите 2 числа"
        }
        
    }
    
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA - numberB
            label.text = String(sum)
        }else {
            label.text = "введите 2 числа"
        }
    }
    
    
    @IBAction func umnozhenie(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        guard let numberA = Int(a), let numberB = Int(b) else{
            label.text = "введите 2 числа"
            return
        }
        let sum = numberA * numberB
        label.text = String(sum)
    }
    
    
    @IBAction func delenie(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "введите 2 числа"
            return
        }
        let sum = numberA / numberB
        label.text = String(sum)
    }
    
}
  

