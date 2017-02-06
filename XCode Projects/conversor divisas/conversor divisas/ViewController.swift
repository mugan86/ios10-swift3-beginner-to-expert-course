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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        //Check if last char in textfield is "point"
        convertMoney(_value: inputCoinTextField.text!, _money: coinSelectionSegmentedControl.selectedSegmentIndex)
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
    
    func convertMoney (_value: String, _money : Int)
    {
        let convertValue : Double = Double(_value)!
        if _money == 0
        {
            //FROM Euro to others
            print(_value + " €:")
            print("=============================")
            print(convertValue * dollarUnit)
            print(convertValue * libraUnit)
            print(convertValue * yenUnit)
            print(convertValue * bitCoinUnit)
        }
        else if _money == 1
        {
            //FROM Dollars to others
            print(_value + " $:")
            print("=============================")
            print(getMoneyToEuroConversion(_value: convertValue, _money: 1))
            print(getMoneyToEuroConversion(_value: convertValue, _money: 1) * libraUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 1) * yenUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 1) * bitCoinUnit)
        }
        else if _money == 2
        {
            //FROM Euro to others
            print(_value + " Libra:")
            print("=============================")
            print(getMoneyToEuroConversion(_value: convertValue, _money: 2))
            print(getMoneyToEuroConversion(_value: convertValue, _money: 2) * dollarUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 2) * yenUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 2) * bitCoinUnit)
        }
        else if _money == 3
        {
            //FROM Euro to others
            print(_value + " Yen:")
            print("=============================")
            print(getMoneyToEuroConversion(_value: convertValue, _money: 3))
            print(getMoneyToEuroConversion(_value: convertValue, _money: 3) * dollarUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 3) * libraUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 3) * bitCoinUnit)
        }
        else if _money == 4
        {
            //FROM Euro to others
            print(_value + " Bitcoin:")
            print("=============================")
            print(getMoneyToEuroConversion(_value: convertValue, _money: 4))
            print(getMoneyToEuroConversion(_value: convertValue, _money: 4) * dollarUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 4) * libraUnit)
            print(getMoneyToEuroConversion(_value: convertValue, _money: 4) * yenUnit)
        }
        
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

