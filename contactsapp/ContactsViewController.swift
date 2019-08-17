//
//  ContactsViewController.swift
//  contactsapp
//
//  Created by Eric Blancas on 8/16/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource {
    
    private let contacts = ContactAPI.getContacts()
    let contactsTableView = UITableView()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].name
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        view.addSubview(contactsTableView)
        contactsTableView.dataSource = self
        //auto layout
        contactsTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        contactsTableView.translatesAutoresizingMaskIntoConstraints = false
        contactsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contactsTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        contactsTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        contactsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contactsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "contactCell")
    }
}
