//
//  ViewController.swift
//  Actividad 1
//
//  Created by macbookUser on 05/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var numero1: UITextField!
    @IBOutlet weak var resultadoTotal: UILabel!
    @IBOutlet weak var numero2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func paraSumar(_ sender: UIButton) {
     
        let dato1 : Int = Int(numero1.text ?? "" ) ?? 0
        let dato2 : Int = Int(numero2.text ?? "" ) ?? 0
        
        resultadoTotal.text = String(dato1 + dato2)
        
    }

    
    @IBAction func paraRestar(_ sender: UIButton) {
        
        let dato1 : Int = Int(numero1.text ?? "" ) ?? 0
        let dato2 : Int = Int(numero2.text ?? "" ) ?? 0
        
        resultadoTotal.text = String(dato1 + dato2)
        
    }
    
}

