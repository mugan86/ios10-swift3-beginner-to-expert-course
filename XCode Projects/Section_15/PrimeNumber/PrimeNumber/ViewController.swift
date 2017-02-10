//
//  ViewController.swift
//  PrimeNumber
//
//  Created by Anartz Mugika on 10/2/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultDivisible: UILabel!
    @IBOutlet var inputNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultDivisible.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkDivisibleNumber(_ sender: Any) {
        checkNumberIsDivisibleOrNo ()

    }
    
    func checkNumberIsDivisibleOrNo ()
    {
        let x = Int(inputNumberTextField.text!)!
        var y = 2
        
        var isDivisible = false
        
        var divisores : [Int] = []
        
        
        
        while x > y
        {
            if x % y == 0
            {
                isDivisible = true
                divisores.append(y)
            }
            y += 1
        }
        
        if isDivisible
        {
            resultDivisible.text = "El número \(x) no es número primo y es divisible con \(divisores)"
        }
        else{
            resultDivisible.text = "El número \(x) es número primo"
        }
    }

}

