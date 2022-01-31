//
//  ViewController.swift
//  Mallampati_FormatName
//
//  Created by Mallampati,Sreebharath on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    @IBAction func onClickOfSubmit(_ sender: Any) {
        fullNameLabel.text = "FullName: \(lastNameTextField.text!), \(firstNameTextField.text!)";
        initialsLabel.text = "Initials: \(lastNameTextField.text!.first!)\(firstNameTextField.text!.first!)"
    }
    @IBAction func onClickOfReset(_ sender: Any) {
        firstNameTextField.text = nil;
        lastNameTextField.text = nil;
        fullNameLabel.text = nil;
        initialsLabel.text = nil;
        firstNameTextField.becomeFirstResponder();
    }
}

