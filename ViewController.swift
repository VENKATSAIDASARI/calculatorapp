//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Dasari,Venkata Sai Ram on 9/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.1;
    var plusoperator:Character = " ";
    var minusoperator:Character = " ";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Button9(_ sender: UIButton) {
        DisplayLabel.text = "9"
        if(operand2 == -1.1)
        {
            operand2 = 9;
        }
        else
        {
            operand1 = 9;
        }
    }
    
    @IBAction func Button8(_ sender: UIButton)
{
        DisplayLabel.text = "8"
        if(operand1 == -1.1)
        {
            operand1 = 8;
        }
        else
        {
            operand2 = 8;
        }
    }
    
    @IBAction func ButtonPlus(_ sender: UIButton) {
        DisplayLabel.text = "+"
        //As the user clicks the plus symbol we need to assign plusoperator to +
        if((plusoperator == " "))
           {
            plusoperator = "+"
        }    }
    
    @IBAction func ButtonMinus(_ sender: UIButton) {
        DisplayLabel.text = "-"
        if((minusoperator == " "))
           {
            minusoperator = "-"
        }
    }
    
    @IBAction func ButtonEqual(_ sender: UIButton) {
        DisplayLabel.text = "="
        
        if(plusoperator == "+")
        {
            DisplayLabel.text = DisplayLabel.text!+"\(operand1+operand2)"
        }
        if(minusoperator == "-")
        {
            DisplayLabel.text = "\(operand1 - operand2)"
        }

        
    }
    
    
   


}

