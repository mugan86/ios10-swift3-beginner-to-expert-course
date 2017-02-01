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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addStudentButton(_ sender: Any) {
        
        let getNameFromNameInputTextField = nameInputTextField.text!
        
        print(getNameFromNameInputTextField)

    }

    
}

