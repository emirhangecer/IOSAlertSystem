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
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            action in
            print("iptal Seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            action in
            print("iptal Seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func buttonSpecialAlert(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
       
        alertController.addTextField { textField in
            
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
        }
        alertController.addTextField()
    
        let tamamAction = UIAlertAction(title: "Save", style: .cancel) {
            action in
            let tf1 = alertController.textFields![1] as UITextField
            let tf = alertController.textFields![0] as UITextField
            
            if let alinanveri = tf.text, let alinanveri2 = tf1.text {
                print("Veri: \(alinanveri) - \(alinanveri2)")
            }
           
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
}

