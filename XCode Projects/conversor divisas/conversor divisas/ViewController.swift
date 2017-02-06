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
    let bitCoinUnit : Double = 0.0011
    let dollarUnit : Double = 1.08
    let libraUnit : Double = 0.86
    let yenUnit : Double = 121.29
    
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

    @IBAction func convertCoinInOthersButton(_ sender: Any) {
        //Check if input is empty
        //Check if last char in textfield is "point"
    }
    
   

}

