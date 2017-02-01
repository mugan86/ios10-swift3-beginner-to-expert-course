//
//  ViewController.swift
//  section_5-lecture-50
//
//  Created by Anartz Mugika on 31/1/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameInputTextField: UITextField!
    
    @IBOutlet var infoMessageAfterAddLabel: UILabel!
    
    @IBOutlet var lstAlumnosLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lstAlumnosLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addStudentButton(_ sender: Any) {
        
        let getNameFromNameInputTextField = nameInputTextField.text!
        
        var text:String = lstAlumnosLabel.text!
        
        //http://stackoverflow.com/a/24037756/3655781
        if ((lstAlumnosLabel.text!.characters.count) > 0)
        {
            //Add return line if list contain one student
            let tempText = lstAlumnosLabel.text! + "\r\n"
            text = tempText
        }
        
        if (getNameFromNameInputTextField != "")
        {
            print(getNameFromNameInputTextField)
            lstAlumnosLabel.text = text + getNameFromNameInputTextField
            infoMessageAfterAddLabel.text = "El alumno \(getNameFromNameInputTextField) añadido!! 😀"
            
            //RESET INPUT TEXT with empty
            nameInputTextField.text = ""
        }
        else
        {
            print("No has añadido nada, anda escribe algo!! 😡")
            infoMessageAfterAddLabel.text = "¡¡No has escrito nada!! Escribe nombres de alumnos por favor 😅"
        }
        
        //Test to return function
        print(textReturn())
    }
    
    //Function to return String
    func textReturn() -> String
    {
        return "Some text";
    }

    
}

