//
//  RegistroViewController.swift
//  Proycet SVC v1
//
//  Created by macbookUser on 07/06/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {
    
    var valores = UserDefaults.standard

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var distrito: UITextField!
    @IBOutlet weak var iglesia: UITextField!
    @IBOutlet weak var clubName: UITextField!
    
    @IBOutlet weak var mensaje: UILabel!
    
    @IBOutlet weak var userName1: UITextField!
    @IBOutlet weak var password1: UITextField!
    

    
    var infoUserName = ""
    var infoPassword = ""
    var infoCorreo = ""
    var infoDistrito = ""
    var infoIglesia = ""
    var infoClubName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = infoUserName
        password.text = infoPassword
        correo.text = infoCorreo
        distrito.text = infoDistrito
        iglesia.text = infoIglesia
        clubName.text = infoClubName
        
//        userName1.text = infoUserName
//        password1.text = infoPassword

        // Do any additional setup after loading the view.
    }
    
    @IBAction func regis(_ sender: UIButton) {
        
        if infoUserName != "", infoPassword != "", infoCorreo != "", infoDistrito != "", infoIglesia != "", infoClubName != ""{
            valores.set(infoUserName, forKey: "userName")
            valores.set(infoPassword, forKey: "password")
            valores.set(infoCorreo, forKey: "correo")
            valores.set(infoDistrito, forKey: "distrito")
            valores.set(infoIglesia, forKey: "iglesia")
            valores.set(infoClubName, forKey: "clubName")
            performSegue(withIdentifier: "perfil1", sender: self)
        }else{
            mensaje.text = "Completa todos los campos"
        }
        
        
        
    }
    
    @IBAction func ingresar(_ sender: UIButton) {
        
        if infoUserName != "", infoPassword != ""{
            valores.set(infoUserName, forKey: "userName")
            valores.set(infoPassword, forKey: "password")
        }
        performSegue(withIdentifier: "perfil2", sender: self)
        
    }
    


}
