//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by 野口晃 on 2020/06/22.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class ViewController:
   UIViewController,UITextFieldDelegate {
   
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
        
        
    }

    @IBAction func login(_ sender: Any) {
        
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
        
    }
    
    //タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    //リターンキーを押した時にキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

    textField.resignFirstResponder()

    return true

    }
    
}

