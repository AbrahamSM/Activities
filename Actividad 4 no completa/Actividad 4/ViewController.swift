//
//  ViewController.swift
//  Actividad 4
//
//  Created by macbookUser on 12/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var registro: UILabel!
    
    var valores = UserDefaults.standard
    
    var users: [User] = [
        User(firstname: "Fulano", lastname: "", username: "fuly", password: "1234"),
        User(firstname: "Sutano", lastname: "", username: "sut", password: "abcd"),
        User(firstname: "Mengano", lastname: "<#T##String#>", username: "meng", password: "9876")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registro.text = "Crea tu cuenta si aun no la tienes"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0.7, green: 0.7, blue: 0.7, alpha: 0.7)
        
        if let info = valores.object(forKey: "informacion"){
            userName.text = info as! String
            var cadenaMagica = info as! String
            if cadenaMagica == "segunda"{
                performSegue(withIdentifier: "segundaVista", sender: self)
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("Ejecutando Segue")
        return true
    }
    
    @IBAction func login(_ sender: UIButton) {
        var validate: Bool = true
        
        if let username = userName.text, let password = password.text{
            
            for user in users{
                if username == user.username, password == user.password{
                    print("Usuario validado")
                    shouldPerformSegue(withIdentifier: "iniciado", sender: self)
                    break
                }else{
                    validate = false
                }
            }
        }
        if !validate{
            showError()
        }
        
        userName.becomeFirstResponder()
        password.resignFirstResponder()
    }
    
    func showError(){
        let errorAlert = UIAlertController(title: "Error", message: "Sus datos no son correctos", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        errorAlert.addAction(okAction)
        present(errorAlert, animated: true, completion: nil)
    }
    

}

