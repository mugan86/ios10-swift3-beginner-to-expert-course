//
//  ViewController.swift
//  section_5-lecture-50
//
//  Created by Anartz Mugika on 31/1/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Student input text
    @IBOutlet var nameInputTextField: UITextField!
    
    //Teacher input text
    @IBOutlet var teacherNameInputTextField: UITextField!
    
    //Messages about action to info user
    
    //Message info show when add one student
    @IBOutlet var infoMessageAfterAddLabel: UILabel!
    
    //Teacher info status show when add teacher
    @IBOutlet var teacherAccessInfoMessagesLabel: UILabel!
    
    //Show all add students
    @IBOutlet var lstAlumnosLabel: UILabel!
    
    var current_teacher:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lstAlumnosLabel.text = ""
        
        //Hide elements
        //lstAlumnosLabel.alpha = 0
        
        //Point focus to teacger add textfield in start
        focusInTeacher()
        
        nameInputTextField.text = ""
        
        infoMessageAfterAddLabel.text = ""
        teacherAccessInfoMessagesLabel.text = ""
        
        current_teacher = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetButton(_ sender: Any) {
        viewDidLoad()
    }
    
    @IBAction func addTeacher(_ sender: Any) {
        var print_str:String = ""
        if (teacherNameInputTextField.text!.characters.count > 0)
        {
            let print_message = "Bienvenido al sistema para añadir alumnos \(teacherNameInputTextField.text!) 🤗"
            
            print(print_message)
            print_str = print_message
            current_teacher = teacherNameInputTextField.text!
            
            focusInTeacher()
            
        }
        else{
            
            let print_message = "😭No has introducido correctamente el nombre del profesor, prueba de nuevo por favor 😱"
            print (print_message)
            print_str = print_message
        }
        showAlertMessage(_title: "Acceso al sistema del profesorado", _message: print_str, _type: 2)
        
        teacherAccessInfoMessagesLabel.text = print_str
    }
    
    @IBAction func addStudentButton(_ sender: Any) {
        
        //showAlertMessage()
        
        if (current_teacher != "")
        {
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
                
                print(lstAlumnosLabel.text!)
                //Clean and focus in students textfield
                focusInStudent()
            }
            else
            {
                print("No has añadido nada, anda escribe algo!! 😡")
                infoMessageAfterAddLabel.text = "¡¡No has escrito nada!! Escribe nombres de alumnos por favor 😅"
                
                focusInTeacher()
            }
            
            
            
            showAlertMessage(_title: "Add student", _message: infoMessageAfterAddLabel.text!, _type: 2)
            
            //Test to return function
            print(textReturn())
        }
        else
        {
            showAlertMessage(_title: "Sesión sin inicar", _message: "Actualmente no has iniciado sessión como profesor, mientras no lo hagas no podrás añadir alumnos", _type: 2)
            
            focusInTeacher()
            
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
    
    func focusInTeacher()
    {
        //Point focus to teacher add textfield
        teacherNameInputTextField.becomeFirstResponder()
        teacherNameInputTextField.text = ""
    }
    
    func focusInStudent()
    {
        //RESET INPUT TEXT with empty
        nameInputTextField.text = ""
        nameInputTextField.becomeFirstResponder()
    }
    
    //Function to return String (Not relevant in app, only to test)
    func textReturn() -> String
    {
        return "Some text";
    }

    
}

