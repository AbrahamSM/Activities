//
//  RegistroViewController.swift
//  Project-SVC
//
//  Created by macbookUser on 21/05/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    @IBOutlet weak var Correo: UITextField!
    @IBOutlet weak var Distrito: UITextField!
    @IBOutlet weak var Iglesia: UITextField!
    @IBOutlet weak var clubName: UITextField!
    
    var valores = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let info = valores.object(forKey: "userName"){
            userName.text = info as! String
            var cadenaMagica = info as! String
        }

        // Do any additional setup after loading the view.
    }



}
