//
//  ViewController.swift
//  CalculatorBootcamp
//
//  Created by Macbook on 21.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSonuc: UILabel!
    
    var firstNumber: Double?
    var secondNumber: Double?
    var operation = false
    var hesapla:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnNumber(_ sender: UIButton) {
        if operation == true {
            lblSonuc.text = String(sender.tag)
            secondNumber = Double(lblSonuc.text!)
            operation = false
            print(secondNumber!)
        }else {
            lblSonuc.text = lblSonuc.text! + String(sender.tag)
            secondNumber = Double(lblSonuc.text!)
            print(secondNumber!)
        }
        print(sender.tag)
        
    }
    @IBAction func btnOperation(_ sender: UIButton) {
        if lblSonuc.text != "" && sender.tag != 11 && sender.tag != 18 {
            firstNumber = Double(lblSonuc.text!)
            if sender.tag == 17 {
                lblSonuc.text = "+"
            }
            hesapla = sender.tag
            operation = true
        }
        else if sender.tag == 18 {
            if hesapla == 17 {
                lblSonuc.text = String(firstNumber! + secondNumber!)
            }
        }
        else if sender.tag == 11 {
            lblSonuc.text = ""
            firstNumber = 0
            secondNumber = 0
            hesapla = 0
        }
    }

}

