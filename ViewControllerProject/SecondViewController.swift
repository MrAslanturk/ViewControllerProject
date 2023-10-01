//
//  SecondViewController.swift
//  ViewControllerProject
//
//  Created by Mert Aslantürk on 1.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var showPasswordLbl: UILabel!
    
    var InputValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        showPasswordLbl.text = InputValue
        
    }
    

}
