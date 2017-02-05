//
//  ViewController.swift
//  millasmetros_reto2.1-section8lecture83
//
//  Created by Anartz Mugika on 4/2/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

/*
 Reto 2.1: Mejoremos la app con los conocimientos que tenemos
 Sección 8, Clase 83
 Ahora que tenemos la app lista, es hora de mejorarla un poquito:
 
 Añade un segundo segmented control para elegir unidad de partida y unidad de llegada
 Modifica el código para convertir según las unidades de partida y llegada seleccionadas
 Añade un tercer ítem a cada segmented control mostrando la unidad yardas
 Modifica el código para convertir a yardas si el usuario las selecciona
 Refactoriza el código para hacer las transformaciones correctamente (prueba a crear una función llamada converFrom(fromUnit:, toUnit) para no repetir código innecesariamente.*/

import UIKit

class ViewController: UIViewController {
    
    //Constants (en 1 km)
    let footUnit : Double = 0.00030480000975359900633
    let mileUnit : Double = 1.609
    let yardUnit : Double = 0.00091440002926079691058
    
    @IBOutlet var inputDistanceTextField: UITextField!
    
    @IBOutlet var fromUnitSegmentedControl: UISegmentedControl!
    
    @IBOutlet var toUnitSegmentedControl: UISegmentedControl!
    
    @IBOutlet var resultConversionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*Define inputDistanceTextField change Event
        
         Para registrar la funcion de cuando cambia el valor del
         textfield para evitar más de un punto o valores incorrectos
         */
        inputDistanceTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    func textFieldDidChange(_ textField: UITextField) {
        var currentTextInInputDistanceTextField : String = textField.text!
        
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
        return _currentTextInInputDistanceTextField[charPos]
    }
    
    //Clean last point in TextField (To remove last position 'point' char
    func cleanPointInLastPosition(_charsCount: Int, _currentTextInInputDistanceTextField: String)
    {
        var newStringWithRemoveUnnecesaryPoints : String = ""
        
        for index in 0..._charsCount - 2  {
            
            let char = getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: _currentTextInInputDistanceTextField, _select_position: index)
            newStringWithRemoveUnnecesaryPoints += String(char)
            inputDistanceTextField.text = newStringWithRemoveUnnecesaryPoints
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showResultInScreen(_output : Double, _input : Double)
    {
        /*let inputValue = String(format: "%.2f", _input)
        let outputValue = String(format: "%.2f", _output)
        
        if typeConverterSegmentedControl.selectedSegmentIndex == 0
        {
            conversionResultLabel.text = "\(inputValue) millas = \(outputValue) kms";
        }
        else{
            conversionResultLabel.text = "\(inputValue) kms = \(outputValue) millas";
        }*/
    }
    
    
    
    @IBAction func convertDistanceValueButton(_ sender: Any) {
        
        let distanceInputString : String = inputDistanceTextField.text!
        //let charsCountDistanceInput : Int = distanceInputString.characters.count
        
        let convertFrom : Int = fromUnitSegmentedControl.selectedSegmentIndex
        let convertTo : Int = toUnitSegmentedControl.selectedSegmentIndex
        
        if convertFrom == convertTo
        {
            resultConversionLabel.text = "No estás realizando la conversión correctamente, selecciona diferentes opciones"
        }
        else //Make conversion
        {
            //Mostrar el resultado según lo que queramos convertir
            let getDistanceFromDistanceInputTextField: Double = Double(distanceInputString)!
            
            if convertFrom == 1 && convertTo == 2 //kms a millas
            {
                print(getDistanceFromDistanceInputTextField * mileUnit)
            }
            else if convertFrom == 1 && convertTo == 3 //kms a yardas
            {
                print(getDistanceFromDistanceInputTextField * yardUnit)
            }
            else if convertFrom == 1 && convertTo == 4 //kms a pies
            {
                print(getDistanceFromDistanceInputTextField * footUnit)
            }
            else if convertFrom == 2 && convertTo == 1 //millas a kms
            {
                print(getDistanceFromDistanceInputTextField / mileUnit)
            }
            else if convertFrom == 2 && convertTo == 3 //millas a yardas
            {
                
            }
            else if convertFrom == 2 && convertTo == 4 //millas a pies
            {
                
            }
            else if convertFrom == 3 && convertTo == 1 //yardas a kms
            {
                
            }
            else if convertFrom == 3 && convertTo == 2 //yardas a millas
            {
                
            }
            else if convertFrom == 3 && convertTo == 4 //yardas a pies
            {
                
            }
            else if convertFrom == 4 && convertTo == 1 //pies a kms
            {
                
            }
            else if convertFrom == 4 && convertTo == 2 //pies a millas
            {
                
            }
            else if convertFrom == 4 && convertTo == 3 //pies a yardas
            {
                
            }
        }
        //Check if textfield is empty--> Show message to inform
        //Check if last char in textfield is "." --> Remove last char and make conversion with int number
        
        //If value not empty, make conversion!
        
        
    }
    


}

