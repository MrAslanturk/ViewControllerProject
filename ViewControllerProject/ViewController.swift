//
//  ViewController.swift
//  ViewControllerProject
//
//  Created by Mert Aslantürk on 1.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var pwTextField: UITextField!
    
    var userPassword = ""
    
    override func viewDidLoad() {        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressCheck(_ sender: Any) {
            
        userPassword = pwTextField.text!
        
        if userPassword == "mert" {
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }else{
            FirstLabel.text = "Wrong Password"
            FirstLabel.textColor = UIColor.red
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.InputValue = userPassword
        }
        
    }
    
}

