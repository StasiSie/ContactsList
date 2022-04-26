//
//  TabBarViewController.swift
//  ContactsList
//
//  Created by Игорь Богданов on 26.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareControllers()
    }
    

    private func prepareControllers() {
        let persons = Person.getPerson()
        let ContactsSectionsVC = viewControllers?.last as! ContactsTableViewController
        let ContactsListVC = viewControllers?.first as! ContactsListViewController
        ContactsSectionsVC.persons = persons
        ContactsListVC.persons = persons
    }

}
