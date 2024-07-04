//
//  ViewController.swift
//  IOSAlertSystem
//
//  Created by Emirhan on 4.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
    }
    
    
    @IBAction func buttonSpecialAlert(_ sender: Any) {
    }
    
}

