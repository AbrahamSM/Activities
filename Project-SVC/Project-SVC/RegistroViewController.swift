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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
