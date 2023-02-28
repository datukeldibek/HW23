//
//  ForgotpasswordViewController.swift
//  HW23
//
//  Created by Jarae on 25/2/23.
//

import UIKit

class ForgotpasswordViewController: UIViewController {

    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var getotp: UIButton!
    @IBOutlet weak var smsTF: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var phoneNum: UITextField!
    @IBOutlet weak var viewCorner: UIView!
    
    @IBOutlet weak var btn1: UIView!
    @IBOutlet weak var btn2: UIView!
    @IBOutlet weak var btn3: UIView!
    
    @IBOutlet weak var btn4: UIView!
    @IBOutlet weak var btn5: UIView!
    @IBOutlet weak var btn6: UIView!
    
    
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
        smsTF.isEnabled = false
        subView.layer.cornerRadius = 12
        getotp.layer.cornerRadius = 12
        submit.layer.cornerRadius = 12
        smsTF.layer.cornerRadius = 12
        
        viewCorner.layer.borderWidth = 2
        viewCorner.layer.borderColor = UIColor.gray.cgColor
        viewCorner.layer.cornerRadius = 12
        
        btn1.layer.borderWidth = 2
        btn1.layer.borderColor = UIColor.gray.cgColor
        btn1.layer.cornerRadius = 12
        btn2.layer.borderWidth = 2
        btn2.layer.borderColor = UIColor.gray.cgColor
        btn2.layer.cornerRadius = 12
        btn3.layer.borderWidth = 2
        btn3.layer.borderColor = UIColor.gray.cgColor
        btn3.layer.cornerRadius = 12
        btn4.layer.borderWidth = 2
        btn4.layer.borderColor = UIColor.gray.cgColor
        btn4.layer.cornerRadius = 12
        btn5.layer.borderWidth = 2
        btn5.layer.borderColor = UIColor.gray.cgColor
        btn5.layer.cornerRadius = 12
        btn6.layer.borderWidth = 2
        btn6.layer.borderColor = UIColor.gray.cgColor
        btn6.layer.cornerRadius = 12
        
        
        
        
        
    }

    @IBAction func getOTP(_ sender: Any) {
        if !isTextFieldFilled(textField: phoneNum){
            phoneNum.placeholder = "Заполните, пожалуйста"
        }else{
            smsTF.isEnabled = true
        }
    }
    @IBAction func submit(_ sender: Any) {
        if !isTextFieldFilled(textField: smsTF){
            phoneNum.placeholder = "Заполните, пожалуйста"
        }else{
            let vc = ConfirmViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
