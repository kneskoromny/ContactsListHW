//
//  TabBarController.swift
//  ContactsListHW
//
//  Created by Кирилл Нескоромный on 14.04.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let contacts = Contact.getContactsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()

    }
    // тк в таббарконтроллере всего 2 массива, не надо их перебирать, находим их по first/last
    private func setupViewControllers() {
        let firstContactListVC = viewControllers?.first as! FirstContactListController
        let secondContactListVC = viewControllers?.last as! SecondContactListController
        
        firstContactListVC.contacts = contacts
        secondContactListVC.contacts = contacts
    }

}
