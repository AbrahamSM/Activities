//
//  ViewController.swift
//  Actividad 5
//
//  Created by macbookUser on 24/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "nube")
        iv.contentMode = .scaleAspectFill
        //iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 10
        iv.layer.masksToBounds = true
        
        return iv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
        view.addSubview(imageView)
        
        imageView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 240).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        setupLayout()
        
        UIView.animate(withDuration: 3.0, delay: 0.5, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
            self.imageView.center.x = self.view.bounds.width - 200
        }, completion: nil)

    }
    
    let imageView2 : UIImageView = {
        let iv2 = UIImageView()
        iv2.image = UIImage(named: "f22")
        iv2.contentMode = .scaleAspectFill
        //iv.translatesAutoresizingMaskIntoConstraints = false
        iv2.layer.cornerRadius = 10
        iv2.layer.masksToBounds = true
    
        return iv2
    }()
    
    func setupLayout(){
        view.addSubview(imageView2)
        
        imageView.frame = CGRect(x: 0, y: 50, width: 100, height: 100)
        //imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    }

    


}

