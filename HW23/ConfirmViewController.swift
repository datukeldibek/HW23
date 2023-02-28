//
//  ConfirmViewController.swift
//  HW23
//
//  Created by Jarae on 25/2/23.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var password2: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
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
        submitBtn.layer.cornerRadius = 12
    }
    
    
    @IBAction func submit(_ sender: Any) {
        if isTextFieldFilled(textField: password1) && isTextFieldFilled(textField: password2) && password1.text == password2.text{
            let vc = FinishViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            password1.placeholder = "Заполните, пожалуйста"
            password2.placeholder = "Заполните, пожалуйста"
        }
        
    }
}
