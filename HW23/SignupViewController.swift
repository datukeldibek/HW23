//
//  SignupViewController.swift
//  HW23
//
//  Created by Jarae on 25/2/23.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var signupBtn: UIButton!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    private func isTextFieldFilled(textField : UITextField) -> Bool {
                guard let text = textField.text else { return false }
            if text.isEmpty {
                textField.layer.borderWidth = 1
                textField.layer.borderColor = UIColor.red.cgColor
                return false
            }else{
                textField.layer.borderWidth = 0
                return true
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondView.layer.cornerRadius = 12
        signupBtn.layer.cornerRadius = 12
    }


    @IBAction func signUp(_ sender: Any) {
        if !isTextFieldFilled(textField: username) && !isTextFieldFilled(textField: password) && !isTextFieldFilled(textField: confirmPassword) && !isTextFieldFilled(textField: name) && !isTextFieldFilled(textField: phoneNumber) && !isTextFieldFilled(textField: email) {
            username.placeholder = "Заполните, пожалуйста"
            password.placeholder = "Заполните, пожалуйста"
            name.placeholder = "Заполните, пожалуйста"
            confirmPassword.placeholder = "Заполните, пожалуйста"
            email.placeholder = "Заполните, пожалуйста"
            phoneNumber.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: name) {
            name.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: phoneNumber){
            phoneNumber.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: email){
            email.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: username){
            username.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: password){
            password.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: confirmPassword){
            confirmPassword.placeholder = "Заполните, пожалуйста"
        }else{
            let vc = FinishViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @IBAction func signin(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    

}
