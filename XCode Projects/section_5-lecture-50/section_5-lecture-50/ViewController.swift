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
        
        showAlertMessage()
        
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
            infoMessageAfterAddLabel.text = "¡¡El alumno \(getNameFromNameInputTextField) añadido correctamente!! 😀"
            
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
    
    func showAlertMessage()
    {
        //Configuration to alert Controller with title, message and use prefered style
        let alertController: UIAlertController = UIAlertController(title: "Hello World 😅",
         message: "Test with Alert Controller💪", preferredStyle: .alert)
         
         //Add action button to close alert Controller after show in app
         //style: default = OK in blue default color / destructive (red color)
         
         let okAlertButton: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
         
         //Add action after configure to use in alertController
         alertController.addAction(okAlertButton)
        
        let cancelAlertButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
         alertController.addAction(cancelAlertButton)
         //Show Alert controller with alertControllerUI elements and OK action
         present(alertController, animated: true, completion: nil)
    }
    
    //Function to return String
    func textReturn() -> String
    {
        return "Some text";
    }

    
}

