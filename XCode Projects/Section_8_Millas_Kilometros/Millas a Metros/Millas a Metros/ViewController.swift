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
        
        //Para registrar la funcion de cuando cambia el valor del textfield para evitar más de un punto o valores incorrectos
        distanceInputTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)

    }
    
    func textFieldDidChange(_ textField: UITextField) {
        var currentTextInInputDistanceTextField : String = textField.text!
        let chars = currentTextInInputDistanceTextField.characters.count
        //let lastPositionBefore = chars - 1
        
        print(chars)
        
        //Reference: http://stackoverflow.com/a/39677331
        
        /*if (chars >= 2)
        {
            let start = currentTextInInputDistanceTextField.index(currentTextInInputDistanceTextField.startIndex, offsetBy: lastPositionBefore)
            let end = currentTextInInputDistanceTextField.index(currentTextInInputDistanceTextField.endIndex, offsetBy: chars)
            let range = start..<end
            
            print(currentTextInInputDistanceTextField.substring(with: range))
        }*/
        
        
        
        //TODO 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func convertInputDistanceButton(_ sender: Any) {
        
        // Check for empty fields
        if distanceInputTextField.text?.isEmpty ?? true {
            // Display alert message
            conversionResultLabel.text = "¡¡ No puedes pretender hacer una conversión sin nada enviado, prueba a escribir un número por favor !!"
            return;
        }
        else
        {
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
    }
    
    func showResultInScreen(_output : Double, _input : Double)
    {
        let inputValue = String(format: "%.2f", _input)
        let outputValue = String(format: "%.2f", _output)
        
        if typeConverterSegmentedControl.selectedSegmentIndex == 0
        {
            conversionResultLabel.text = "\(inputValue) millas = \(outputValue) kms";
        }
        else{
            conversionResultLabel.text = "\(inputValue) kms = \(outputValue) millas";
        }
    }

}

