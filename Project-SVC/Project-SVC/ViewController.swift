//
//  ViewController.swift
//  Project-SVC
//
//  Created by macbookUser on 30/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    var valores = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        logo.image = UIImage(named: "jalogo")
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

