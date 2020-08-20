//
//  ViewController.swift
//  Swift5Keyboard
//
//  Created by 野入隆史 on 2020/08/20.
//  Copyright © 2020 野入隆史. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.delegate = self
        password.delegate = self 
        
        
    }


    @IBAction func loginBtn(_ sender: Any) {
        
        //ログインボタンを押したら入力した物がLabelに入る
        userNameLabel.text = userName.text
        passwordLabel.text = password.text
        
        
        //入力を空欄に戻す
        userName.text = ""
        password.text = ""
        
        //画像をunlockに変更
        logoImage.image = UIImage(named: "img6.png")
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        
    }
    
    //returnKey でキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
}

