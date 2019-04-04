//
//  ViewController.swift
//  UITextView03
//
//  Created by D7703_19 on 2019. 4. 4..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var UImyTextField: UITextField!
    
    @IBOutlet weak var mylabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        UImyTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        UImyTextField.clearButtonMode = UITextField.ViewMode.always
    }

    @IBAction func btnenter(_ sender: Any) {
        let inString = UImyTextField.text
        print(inString!)
        mylabel.text = inString
        UImyTextField.text = ""
        UImyTextField.resignFirstResponder()
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UImyTextField.resignFirstResponder()
        UImyTextField.backgroundColor = UIColor.yellow
        return true
    }
    
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        return true
    }
    
}

