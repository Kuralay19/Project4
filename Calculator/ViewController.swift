//
//  ViewController.swift
//  Calculator
//
//  Created by Smart Castle M1A2004 on 14.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var currentValueLabel: UILabel!
    
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var percent: UIButton!
    @IBOutlet weak var multiple: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var plusOrminus: UIButton!
    @IBOutlet weak var comma: UIButton!
    
    var CurrentValue = 0
    var UserIsInAprogress: Bool = false
    var userIsActivateActions: Bool = false
    var oldValue: Double = 0.0
    var operatorValue: String = ""
    
    @IBAction func ButtonClicked(_ sender: UIButton) {
        
        guard let buttonText = sender.titleLabel?.text,
              let displayedText = currentValueLabel.text
        else {return}
        
        switch buttonText {
        case "AC" :
            print("case: AC")
            UserIsInAprogress = false
            currentValueLabel.text = "0"
        case "-":
            print("case -")
            UserIsInAprogress = false
            oldValue = Double(displayedText)!
            operatorValue = "-"
            
        case "+":
            print("case +")
            UserIsInAprogress = false
            oldValue = Double(displayedText)!
            operatorValue = "+"
            
        case "/":
            print("case /")
            UserIsInAprogress = false
            oldValue = Double(displayedText)!
            operatorValue = buttonText
            
        case "x":
            print("case x")
            UserIsInAprogress = false
            oldValue = Double(displayedText)!
            operatorValue = "x"
        case "+/-":
            print("case +/-")
            currentValueLabel.text = String(Int( displayedText)! * -1)
        case ",":
            print("case ,")
        case "%":
            print("case %")
            
            UserIsInAprogress = false
            let percentValue = Double(displayedText)! / 100.0
            currentValueLabel.text = String(percentValue)
        case "=":
            print("case =")
            var newValue = 0.0
            if oldValue != 0, operatorValue != " " {
                
                switch operatorValue {
                case "/":
                    newValue = oldValue / Double(displayedText)!
                case "x":
                    newValue = oldValue * Double(displayedText)!
                case "+":
                    newValue = oldValue + Double(displayedText)!
                case "-":
                    newValue = oldValue - Double(displayedText)!
                default: break
                    
                    //            if operatorValue == "/" {
                    //                    newValue = oldValue / Double(displayedText)!
                    //                } else if operatorValue == "x" {
                    //                    newValue = oldValue * Double(displayedText)!
                    //                }
                    //                else if operatorValue == "+" {
                    //                    newValue = oldValue + Double(displayedText)!
                    //                } else if operatorValue == "-" {
                    //                    newValue = oldValue - Double(displayedText)!
                                   }
                                    currentValueLabel.text = String(newValue)
                                }
                    
               
                
            default:
                if UserIsInAprogress {
                    currentValueLabel.text =  displayedText + buttonText
                    
                }
                else {
                    currentValueLabel.text = buttonText
                    UserIsInAprogress = true
                }
                return
                
                
                
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        
    }
    

