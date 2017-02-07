//
//  ViewController.swift
//  conversor divisas
//
//  Created by Anartz Mugika on 6/2/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//  Elige varias divisas (Euro, Dólar, Peso, Libras, Reales...) y elabora un conversor de divisas con los elementos que has ido conociendo a lo largo de las clases hasta el momento. Consulta el estado actual de la relación entre divisas (1 € = 0.895 $, por ejemplo)
//

import UIKit

class ViewController: UIViewController {

    //1 euro in other divises
    //Info extract from https://conversormoneda.com/
    let bitCoinUnit : Double = 0.00105378
    let dollarUnit : Double = 1.07438
    let libraUnit : Double = 0.86
    let yenUnit : Double = 121.29
    
    @IBOutlet var inputCoinTextField: UITextField!
    
    @IBOutlet var coinSelectionSegmentedControl: UISegmentedControl!
    
    @IBOutlet var selectionCoinLabel: UILabel!
    
    @IBOutlet var conversionResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*Define inputDistanceTextField change Event
         
         Para registrar la funcion de cuando cambia el valor del
         textfield para evitar más de un punto o valores incorrectos
         */
        inputCoinTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    func textFieldDidChange(_ textField: UITextField) {
        var currentTextInInputDistanceTextField : String = textField.text!
        
        let charsCount = currentTextInInputDistanceTextField.characters.count
        if charsCount > 0
        {
            var pointCount = 0;
            var i = 0;
            repeat {
                let char = getInputDistanceTextFieldLastChar(_currentTextInInputTextField: currentTextInInputDistanceTextField, _select_position: i)
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
    func getInputDistanceTextFieldLastChar(_currentTextInInputTextField: String, _select_position: Int) -> Character
    {
        let charPos = _currentTextInInputTextField.index(_currentTextInInputTextField.startIndex, offsetBy: _select_position) // Select position
        return _currentTextInInputTextField[charPos]
    }
    
    //Clean last point in TextField (To remove last position 'point' char
    func cleanPointInLastPosition(_charsCount: Int, _currentTextInInputDistanceTextField: String)
    {
        var newStringWithRemoveUnnecesaryPoints : String = ""
        
        //Check if point and string length = 2
        
        if (_currentTextInInputDistanceTextField.characters.count == 1)
        {
            focusInInput()
            showAlertMessage(_title: "Conversión erronea", _message: "No puedes realizar la conversión únicamente introduciendo un punto. Añade un número correcto por favor", _type: 2)
            return;
        }
        else
        {
            for index in 0..._charsCount - 2  {
                
                let char = getInputDistanceTextFieldLastChar(_currentTextInInputTextField: _currentTextInInputDistanceTextField, _select_position: index)
                newStringWithRemoveUnnecesaryPoints += String(char)
                inputCoinTextField.text = newStringWithRemoveUnnecesaryPoints
            }
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertCoinInOthersButton(_ sender: Any) {
        //Check if input is empty
        // Check for empty fields
        if inputCoinTextField.text?.isEmpty ?? true {
            // TODO Display alert message!!!
            /*resultConversionLabel.text = "¡¡ No puedes pretender hacer una conversión sin nada enviado, prueba a escribir un número por favor !!"*/
            
            showAlertMessage(_title: "No es posible convertir", _message: "¡¡ No puedes pretender hacer una conversión sin nada enviado, prueba a escribir un número por favor !! 😬😅", _type: 2)
            
            focusInInput()
            return;
        }
        
        let distanceInputString : String = inputCoinTextField.text!
        let charsCountDistanceInput : Int = distanceInputString.characters.count
        print(distanceInputString)
        
        if String(getInputDistanceTextFieldLastChar(_currentTextInInputTextField: inputCoinTextField.text!, _select_position: charsCountDistanceInput - 1)) == "."
        {
            cleanPointInLastPosition(_charsCount: charsCountDistanceInput, _currentTextInInputDistanceTextField: distanceInputString)
            inputCoinTextField.text=""
            focusInInput()
        }
        else
        {
            //Check if last char in textfield is "point"
            convertMoney(_value: inputCoinTextField.text!, _money: coinSelectionSegmentedControl.selectedSegmentIndex)

        }
        
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
    
    func focusInInput()
    {
        inputCoinTextField.becomeFirstResponder()
    }
    
    func roundResultWithTwoDecimals(_result : Double) -> String
    {
        return String(format: "%.2f", _result)
    }
    
    func convertMoney (_value: String, _money : Int)
    {
        let convertValue : Double = Double(_value)!
        var tempText = ""
        if _money == 0
        {
            //FROM Euro to others
            print(_value + " €:")
            print("=============================")
            selectionCoinLabel.text = "Quieres convertir \(_value) €"
            let dollar = roundResultWithTwoDecimals(_result: convertValue * dollarUnit)
            let libra = roundResultWithTwoDecimals(_result: convertValue * libraUnit)
            let  yen = roundResultWithTwoDecimals(_result: convertValue * yenUnit)
            let bitCoin = roundResultWithTwoDecimals(_result: convertValue * bitCoinUnit)
            
            tempText = dollar + " $.\r\n"
            tempText = tempText + libra + " libra esterlina.\r\n"
            tempText = tempText + yen + " yens.\r\n"
            tempText = tempText + bitCoin + " bit coins.\r\n"
            print (tempText)
        }
        else if _money == 1
        {
            //FROM Dollars to others
            print(_value + " $:")
            selectionCoinLabel.text = "Quieres convertir \(_value) $"
            print("=============================")
            let euro = roundResultWithTwoDecimals(_result: getMoneyToEuroConversion(_value: convertValue, _money: 1))
            let libra = roundResultWithTwoDecimals(_result: getMoneyToEuroConversion(_value: convertValue, _money: 1) * libraUnit)
            let yen = roundResultWithTwoDecimals(_result: getMoneyToEuroConversion(_value: convertValue, _money: 1) * yenUnit)
            let bitCoin = roundResultWithTwoDecimals(_result: getMoneyToEuroConversion(_value: convertValue, _money: 1) * bitCoinUnit)
            
            tempText = String(euro) + " €.\r\n"
            tempText = tempText + String(libra) + " libra esterlina.\r\n"
            tempText = tempText + String(yen) + " yens.\r\n"
            tempText = tempText + String(bitCoin) + " bit coins.\r\n"
        }
        else if _money == 2
        {
            //FROM Euro to others
            print(_value + " Libra:")
            selectionCoinLabel.text = "Quieres convertir \(_value) libras"
            print("=============================")
            let euro = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 2))
            let dollar = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 2) * dollarUnit)
            let yen = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 2) * yenUnit)
            let bitCoin = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 2) * bitCoinUnit)
            
            tempText = String(euro) + " €.\r\n"
            tempText = tempText + String(dollar) + " $.\r\n"
            tempText = tempText + String(yen) + " yens.\r\n"
            tempText = tempText + String(bitCoin) + " bit coins."
        }
        else if _money == 3
        {
            //FROM Euro to others
            print(_value + " Yen:")
            selectionCoinLabel.text = "Quieres convertir \(_value) Yens"
            print("=============================")
            let euro = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 3))
            let dollar = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 3) * dollarUnit)
            let libra = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 3) * libraUnit)
            let bitCoin = roundResultWithTwoDecimals( _result: getMoneyToEuroConversion(_value: convertValue, _money: 3) * bitCoinUnit)
            
            tempText = String(euro) + " €.\r\n"
            tempText = tempText + String(dollar) + " $.\r\n"
            tempText = tempText + String(libra) + " libra esterlina.\r\n"
            tempText = tempText + String(bitCoin) + " bit coins."
        }
        else if _money == 4
        {
            //FROM Euro to others
            print(_value + " Bitcoin:")
            selectionCoinLabel.text = "Quieres convertir \(_value) Bitcoins"
            print("=============================")
            let euro = roundResultWithTwoDecimals( _result:getMoneyToEuroConversion(_value: convertValue, _money: 4))
            let dollar = roundResultWithTwoDecimals( _result:getMoneyToEuroConversion(_value: convertValue, _money: 4) * dollarUnit)
            let libra = roundResultWithTwoDecimals( _result:getMoneyToEuroConversion(_value: convertValue, _money: 4) * libraUnit)
            let yen = roundResultWithTwoDecimals( _result:getMoneyToEuroConversion(_value: convertValue, _money: 4) * yenUnit)
            
            tempText = String(euro) + " €.\r\n"
            tempText = tempText + String(dollar) + " $.\r\n"
            tempText = tempText + String(libra) + " libra esterlina.\r\n"
            tempText = tempText + String(yen) + " yens.\r\n"
        }
        conversionResultLabel.text = tempText
        
        
        
    }
    
    func getMoneyToEuroConversion(_value : Double, _money: Int)-> Double
    {
        if _money == 1 //Dollar
        {
            return _value / dollarUnit
        }
        else if _money == 2 //libra
        {
            return _value / libraUnit
        }
        if _money == 3 //Yen
        {
            return _value / yenUnit
        }
        return _value / bitCoinUnit //Return Bitcoin in euros
    }
    
   

}

