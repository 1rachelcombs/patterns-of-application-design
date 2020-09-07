//
//  ViewController.swift
//  Assignment 2
//
//  Created by Rachel Combs on 9/6/20.
//  Copyright © 2020 Rachel Combs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var total: UILabel!
    
    
    @IBAction func plus(_ sender: Any) {
        var one = firstNumber.text
        var two = secondNumber.text
        var answer1 = (one! + two!)
        total.text = "\(answer1)"
    }
    
    @IBAction func minus(_ sender: Any) {
        var one = firstNumber.text
        var two = secondNumber.text
        var answer2 = one - two
        total.text = "\(answer2)"
    }
    
    @IBAction func multiply(_ sender: Any) {
        var one = firstNumber.text
        var two = secondNumber.text
        var answer3 = one * two
        total.text = "\(answer3)"
    }
    
    @IBAction func divide(_ sender: Any) {
        var one = firstNumber.text
        var two = secondNumber.text
        var answer4 = one / two
        total.text = "\(answer4)"
    }
    
}

