//
//  ViewController.swift
//  twoButtons
//
//  Created by Kamazhay Kospan on 28.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func setTextButtonTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
            label.text = text
        }
    }
    
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textField.text = " "
        label.text = " "
    }
    
}

