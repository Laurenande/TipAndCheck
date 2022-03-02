//
//  ViewController.swift
//  TipAndCheck
//
//  Created by Егор Куракин on 21.02.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var sumTF: UITextField!
    @IBOutlet var tipButtons: [UIButton]!
    @IBOutlet weak var countMen: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    weak var delegate : CalculateViewController?
    var tip = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func tipButton(_ sender: UIButton) {
        sender.isSelected = true
        
        for tipButton in tipButtons {
            if sender != tipButton{
                tipButton.isSelected = false
            }
        }
        let title = String(sender.currentTitle!)
        tip = Double(title.dropLast())!/100
        print(tip)
        
        
    }
    @IBAction func peopleStepper(_ sender: UIStepper) {
        countMen.text = String(format: "%.0f", sender.value)
    }
    
    
    @IBAction func keyboardOff(_ sender: Any) {
        sumTF.resignFirstResponder()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "secondVC"
        {
            let destanitionVC = segue.destination as! CalculateViewController
            destanitionVC.total = sumTF.text!
            destanitionVC.tip = self.tip
            destanitionVC.count = Double(countMen.text!)!
        }
    }
    
}

