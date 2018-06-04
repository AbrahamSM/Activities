//
//  ProductoViewController.swift
//  tablas 2
//
//  Created by macbookUser on 14/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ProductoViewController: UIViewController {
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    
    var nombre : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = nombre
        imagen.image = UIImage(named: nombre)
        print(nombre)

        // Do any additional setup after loading the view.
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
