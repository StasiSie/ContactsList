//
//  ContactInfoViewController.swift
//  ContactsList
//
//  Created by Игорь Богданов on 26.04.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone:\(person.phoneNumber)"
        mailLabel.text = "Email:\(person.emailAdress)"
    }
    

   

}
