//
//  ContactInfoViewController.swift
//  ContactsListHW
//
//  Created by Кирилл Нескоромный on 14.04.2021.
//

import UIKit

class DetailContactInfoViewController: UIViewController {

    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = contact.fullName
        phoneNumberLabel.text = "Phone: \(contact.phone)"
        emailAddressLabel.text = "Email: \(contact.email)"
    }
    

}
