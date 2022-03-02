//
//  CalculateViewController.swift
//  TipAndCheck
//
//  Created by Егор Куракин on 21.02.2022.
//

import UIKit

class CalculateViewController: UIViewController{
    
    @IBOutlet weak var totalLB: UILabel!
    @IBOutlet weak var countLB: UILabel!
    @IBOutlet weak var tipLB: UILabel!
    var total = " "
    var count = 0.0
    var tip = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        let tips = Double(total)! * tip
        let sum = (Double(total)! + tips) / count
        print(sum)
        totalLB.text = " \(sum)"
        tipLB.text = "Чаевые \(tip)"
        countLB.text = "Кол-во человек \(count)"
    }
    
    

    
   
    
}
