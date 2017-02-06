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
 
 Añade un segundo segmented control para elegir unidad de partida y unidad de llegada OK
 Modifica el código para convertir según las unidades de partida y llegada seleccionadas OK
 Añade un tercer ítem a cada segmented control mostrando la unidad yardas OK (se ha añadido también para convertir pies)
 Modifica el código para convertir a yardas si el usuario las selecciona (OK)
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
        
        //Check if point and string length = 2
        
        if (_currentTextInInputDistanceTextField.characters.count == 1)
        {
            focusInInputDistanceTextField()
            showAlertMessage(_title: "Conversión erronea", _message: "No puedes realizar la conversión únicamente introduciendo un punto. Añade un número correcto por favor", _type: 2)
            return;
        }
        else
        {
            for index in 0..._charsCount - 2  {
                
                let char = getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: _currentTextInInputDistanceTextField, _select_position: index)
                newStringWithRemoveUnnecesaryPoints += String(char)
                inputDistanceTextField.text = newStringWithRemoveUnnecesaryPoints
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showResultInScreen(_output : Double, _input : Double, _output_unit: String, _input_unit: String)
    {
        let inputValue = String(format: "%.2f", _input)
        let outputValue = String(format: "%.2f", _output)
        
        resultConversionLabel.text = "\(inputValue) \(_input_unit) = \(outputValue) \(_output_unit)";
    
    }
    
    func focusInInputDistanceTextField()
    {
        inputDistanceTextField.becomeFirstResponder()
        inputDistanceTextField.text = ""
    }
    
    
    @IBAction func convertDistanceValueButton(_ sender: Any) {
        //Check if textfield is empty--> Show message to inform
        //Check if last char in textfield is "." --> Remove last char and make conversion with int number
        
        //If value not empty, make conversion!
        
        // Check for empty fields
        if inputDistanceTextField.text?.isEmpty ?? true {
            // TODO Display alert message!!!
            /*resultConversionLabel.text = "¡¡ No puedes pretender hacer una conversión sin nada enviado, prueba a escribir un número por favor !!"*/
            
            showAlertMessage(_title: "No es posible convertir", _message: "¡¡ No puedes pretender hacer una conversión sin nada enviado, prueba a escribir un número por favor !! 😬😅", _type: 2)
            
            focusInInputDistanceTextField()
            return;
        }
        
        let distanceInputString : String = inputDistanceTextField.text!
        let charsCountDistanceInput : Int = distanceInputString.characters.count
        
        if String(getInputDistanceTextFieldLastChar(_currentTextInInputDistanceTextField: inputDistanceTextField.text!, _select_position: charsCountDistanceInput - 1)) == "."
        {
            cleanPointInLastPosition(_charsCount: charsCountDistanceInput, _currentTextInInputDistanceTextField: distanceInputString)
        }
        
        
        let convertFrom : Int = fromUnitSegmentedControl.selectedSegmentIndex
        let convertTo : Int = toUnitSegmentedControl.selectedSegmentIndex
        
        
        if convertFrom == convertTo
        {
            // TODO Show alert message
            /*resultConversionLabel.text = "No estás realizando la conversión correctamente, selecciona diferentes opciones"*/
            
            showAlertMessage(_title: "No es posible convertir", _message: "No estás realizando la conversión correctamente, selecciona diferentes opciones 😬😅", _type: 2)
            
            focusInInputDistanceTextField()
        }
        else //Make conversion
        {
            //Mostrar el resultado según lo que queramos convertir
            let getDistanceFromDistanceInputTextField: Double = Double(distanceInputString)!
            var result : Double = 0
            var input_unit = ""
            var output_unit = ""
            if convertFrom == 0 && convertTo == 1 //kms a millas
            {
                result = getMileFromKm(_km: getDistanceFromDistanceInputTextField)
                input_unit = "kms"
                output_unit = "millas"
                
            }
            else if convertFrom == 0 && convertTo == 2 //kms a yardas
            {
                result = getYardFromKm(_km: getDistanceFromDistanceInputTextField)
                input_unit = "kms"
                output_unit = "yardas"
            }
            else if convertFrom == 0 && convertTo == 3 //kms a pies
            {
                result = getFootFromKm(_km: getDistanceFromDistanceInputTextField)
                input_unit = "kms"
                output_unit = "pies"
            }
            else if convertFrom == 1 && convertTo == 0 //millas a kms
            {
                result = getKmFromMile(_mile: getDistanceFromDistanceInputTextField)
                input_unit = "millas"
                output_unit = "kms"
            }
            else if convertFrom == 1 && convertTo == 2 //millas a yardas
            {
                result = getKmFromMile(_mile: getDistanceFromDistanceInputTextField) / yardUnit
                input_unit = "millas"
                output_unit = "yardas"
            }
            else if convertFrom == 1 && convertTo == 3 //millas a pies
            {
                result = getKmFromMile(_mile: getDistanceFromDistanceInputTextField) / footUnit
                input_unit = "millas"
                output_unit = "pies"
            }
            else if convertFrom == 2 && convertTo == 0 //yardas a kms
            {
                result = getKmFromYard(_yard: getDistanceFromDistanceInputTextField)
                input_unit = "yardas"
                output_unit = "kms"
            }
            else if convertFrom == 2 && convertTo == 1 //yardas a millas
            {
                result = getKmFromYard(_yard: getDistanceFromDistanceInputTextField) / mileUnit
                input_unit = "yardas"
                output_unit = "millas"
            }
            else if convertFrom == 2 && convertTo == 3 //yardas a pies
            {
                result = getKmFromYard(_yard: getDistanceFromDistanceInputTextField) / footUnit
                input_unit = "yardas"
                output_unit = "pies"
            }
            else if convertFrom == 3 && convertTo == 0 //pies a kms
            {
                result = getKmFromFoot(_foot: getDistanceFromDistanceInputTextField)
                input_unit = "pies"
                output_unit = "kms"
            }
            else if convertFrom == 3 && convertTo == 1 //pies a millas
            {
                result = getKmFromFoot(_foot: getDistanceFromDistanceInputTextField) / mileUnit
                input_unit = "pies"
                output_unit = "millas"
            }
            else if convertFrom == 3 && convertTo == 2 //pies a yardas
            {
                result = getKmFromFoot(_foot: getDistanceFromDistanceInputTextField) / yardUnit
                input_unit = "pies"
                output_unit = "yardas"
            }
            showResultInScreen(_output: result, _input: getDistanceFromDistanceInputTextField, _output_unit: output_unit, _input_unit: input_unit)
            
        }
        
    }
    
    func getMileFromKm(_km: Double) -> Double
    {
        return _km / mileUnit
    }
    
    func getFootFromKm(_km: Double) -> Double
    {
        return _km / footUnit
    }
    
    func getYardFromKm(_km: Double) -> Double
    {
        return _km / yardUnit
    }
    
    func getKmFromMile(_mile: Double) -> Double
    {
        return _mile * mileUnit
    }
    
    func getKmFromFoot(_foot: Double) -> Double
    {
        return _foot * footUnit
    }
    
    func getKmFromYard(_yard: Double) -> Double
    {
        return _yard * yardUnit
    }
    
    func showAlertMessage(_title:String, _message:String, _type: Int)
    {
        //Configuration to alert Controller with title, message and use prefered style
        let alertController: UIAlertController =
            UIAlertController(title: _title,
                              message: _message,
                              preferredStyle: .alert)
        
        //Add action button to close alert Controller after show in app
        //style: default = OK in blue default color / destructive (red color)
        
        let okAlertButton: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        //Add action after configure to use in alertController
        alertController.addAction(okAlertButton)
        
        if (_type == 1)
        {
            let cancelAlertButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            
            alertController.addAction(cancelAlertButton)
        }
        
        //Show Alert controller with alertControllerUI elements and OK action
        present(alertController, animated: true, completion: nil)
    }
    


}

