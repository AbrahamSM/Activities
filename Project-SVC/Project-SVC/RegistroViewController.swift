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
    
    var infoUserName = ""
    var infoContraseña = ""
    var infoCorreo = ""
    var infoDistrito = ""
    var infoIglesia = ""
    var infoClubName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = infoUserName
        contraseña.text = infoContraseña
        Correo.text = infoCorreo
        Distrito.text = infoDistrito
        Iglesia.text = infoIglesia
        clubName.text = infoClubName
        
        userName1.text = infoUserName
        password.text = infoContraseña

        // Do any additional setup after loading the view.
    }



}
