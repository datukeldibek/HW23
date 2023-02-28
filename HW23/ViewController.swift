//
//  ViewController.swift
//  HW23
//
//  Created by Jarae on 21/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var signin: UIButton!
    
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
        subView.layer.cornerRadius = 12
        signin.layer.cornerRadius = 12
    }
    
    @IBAction func signIn(_ sender: Any) {
        if !isTextFieldFilled(textField: username) && !isTextFieldFilled(textField: password) {
            username.placeholder = "Заполните, пожалуйста"
            password.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: username) {
            username.placeholder = "Заполните, пожалуйста"
        }else if !isTextFieldFilled(textField: password){
            password.placeholder = "Заполните, пожалуйста"
        }else{
            let vc = FinishViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @IBAction func signUp(_ sender: Any) {
        let vc = SignupViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func ForgotPassword(_ sender: Any) {
        let vc = ForgotpasswordViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
