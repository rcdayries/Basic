//
//  ViewController.swift
//  Basic
//
//  Created by Richard Dayries on 2/13/18.
//  Copyright © 2018 org.dayries. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self
    }
    @IBAction func didTapButton(_ sender: UIButton) {
        if let name = myTextField.text {
            myLabel.text = "Hi \(name)!"
            myTextField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let name = myTextField.text {
            myLabel.text = "Hi \(name)!"
            myTextField.resignFirstResponder()
        }
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

