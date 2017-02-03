//
//  ViewController.swift
//  Millas a Metros
//
//  Created by Anartz Mugika on 2/2/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var distanceInputTextField: UITextField!
    
    @IBOutlet var typeConverterSegmentedControl: UISegmentedControl!
    
    @IBOutlet var conversionResultLabel: UILabel!
    
    //Constants
    let mileUnit : Double = 1.609
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        conversionResultLabel.text = "Aquí se mostrará el valor del resultado"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func convertInputDistanceButton(_ sender: Any) {
        
        let select_option = typeConverterSegmentedControl.selectedSegmentIndex
        
        let getDistanceFromDistanceInputTextField: Double = Double(distanceInputTextField.text!)!
        
        if select_option == 0
        {
            showResultInScreen(_output: getDistanceFromDistanceInputTextField * mileUnit, _input: getDistanceFromDistanceInputTextField)
        }
        else if select_option == 1
        {
            showResultInScreen(_output: getDistanceFromDistanceInputTextField / mileUnit, _input: getDistanceFromDistanceInputTextField)
        }
    }
    
    func showResultInScreen(_output : Double, _input : Double)
    {
        var inputValue = String(format: "%.2f", _input)
        var outputValue = String(format: "%.2f", _output)
        
        if typeConverterSegmentedControl.selectedSegmentIndex == 0
        {
            conversionResultLabel.text = "\(inputValue) millas = \(outputValue) kms";
        }
        else{
            conversionResultLabel.text = "\(inputValue) kms = \(outputValue) millas";
        }
    }

}

