//
//  PersonViewController.swift
//  ContactList
//
//  Created by Егор on 28.07.2021.
//

import UIKit

class MorePersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var contactNameTextField: UITextField!
    
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    

    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactNameTextField.text = personInfo.name + " " + personInfo.surname
        phoneLabel.text = personInfo.phone
        emailLabel.text = personInfo.email
      
    }

}
