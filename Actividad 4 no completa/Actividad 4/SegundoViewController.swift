//
//  SegundoViewController.swift
//  Actividad 4
//
//  Created by macbookUser on 19/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var nickName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationItem.title = "Reguistro"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Registro(_ sender: UIButton) {
        let info = userName.text
        let info2 = nickName.text
        let info3 = password.text
        
        if info, info2 != ""{
            valores.set(info, forKey: "informacion")
        }
        performSegue(withIdentifier: "terceraVista", sender: self)
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
