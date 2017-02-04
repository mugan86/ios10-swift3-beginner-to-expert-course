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
    
    //Variables
    
    var countPoinChars = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        conversionResultLabel.text = "Aquí se mostrará el valor del resultado"
        
        //Para registrar la funcion de cuando cambia el valor del textfield para evitar más de un punto o valores incorrectos
        distanceInputTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)

    }
    
    func textFieldDidChange(_ textField: UITextField) {
        var currentTextInInputDistanceTextField : String = textField.text!
        
        print (currentTextInInputDistanceTextField)
      
        let charsCount = currentTextInInputDistanceTextField.characters.count
        if charsCount > 0
        {
            var pointCount = 0;
            var i = 0;
            repeat {
                let char = getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: currentTextInInputDistanceTextField, _select_position: i)
                i += 1
                if char == "."
                {
                    pointCount += 1
                    print("points: \(pointCount)")
                }
                
            } while i < charsCount && pointCount < 2
            
            //Only input inside if points Count == 2
            if pointCount == 2
            {
                cleanPointInLastPosition(_charsCount: charsCount, _currentTextInInputDistanceTextField: currentTextInInputDistanceTextField)
            }
        }

    }
    
    //To return last position character to check points
    func getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: String, _select_position: Int) -> Character
    {
        let charPos = _currentTextInInputDistanceTextField.index(_currentTextInInputDistanceTextField.startIndex, offsetBy: _select_position) // Select position
        print(_currentTextInInputDistanceTextField + "doddoodod")
        return _currentTextInInputDistanceTextField[charPos]
    }
    
    //Clean last point in TextField
    func cleanPointInLastPosition(_charsCount: Int, _currentTextInInputDistanceTextField: String)
    {
        print("remove last point!!")
        var newStringWithRemoveUnnecesaryPoints : String = ""
        
        for index in 0..._charsCount - 2  {
            
            let char = getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: _currentTextInInputDistanceTextField, _select_position: index)
            newStringWithRemoveUnnecesaryPoints += String(char)
            distanceInputTextField.text = newStringWithRemoveUnnecesaryPoints
        }

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
        /*else if getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: input
, _select_position: distanceInputTextField.text!.characters.count) == "." //Check if last char is point
        {
            print("Last char point")
            distanceInputTextField.text = distanceInputTextField.text! + "0"
        }*/
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

