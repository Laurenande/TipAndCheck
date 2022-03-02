//
//  CalcViewController.swift
//  TipAndCheck
//
//  Created by Егор Куракин on 21.02.2022.
//

import UIKit

/*class CalcViewController: UIViewController,CalculateInfo {
    func calculateTotal(check: Double, tip: Double, count: Double) {
        let total = check + (check * tip)
        totalLB.text = String(total / count)
        tipLB.text = "Чаевые \(tip)%"
        countLB.text = "Кол-во человек \(count)"
    }*/
    

    @IBOutlet weak var totalLB: UILabel!
    @IBOutlet weak var tipLB: UILabel!
    @IBOutlet weak var countLB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  

}
