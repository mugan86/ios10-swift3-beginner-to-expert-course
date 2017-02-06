//
//  ViewController.swift
//  conversor divisas
//
//  Created by Anartz Mugika on 6/2/17.
//  Copyright © 2017 Anartz Mugika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputCoinTextField: UITextField!
    
    @IBOutlet var coinSelectionSegmentedControl: UISegmentedControl!
    
    @IBOutlet var selectionCoinLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var coinConvertButton: UIButton!

}

