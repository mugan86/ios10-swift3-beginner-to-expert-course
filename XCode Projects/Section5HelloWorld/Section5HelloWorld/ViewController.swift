//
//  ViewController.swift
//  Section5HelloWorld
//
//  Created by Anartz Mugika on 30/1/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClickPressed(_ sender: UIButton) {
        
        print("Hemos pulsado el botón!!  😃")
        
        //Configuration to alert Controller with title, message and use prefered style
        let alertController: UIAlertController = UIAlertController(title: "Hello World 😅",
                                                                   message: "Test with Alert Controller💪", preferredStyle: .alert)
        
        //Add action button to close alert Controller after show in app
        
        let okAlertButton: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        //Add action after configure to use in alertController
        alertController.addAction(okAlertButton)
        
        //Show Alert controller with alertControllerUI elements and OK action
        present(alertController, animated: true, completion: nil)
    }

}

