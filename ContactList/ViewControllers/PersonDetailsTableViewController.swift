//
//  PersonDetailsTableViewController.swift
//  ContactList
//
//  Created by Егор on 28.07.2021.
//

import UIKit

class PersonDetailsTableViewController: UITableViewController {
    
    var personList = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellList", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.phone
        content.text = person.email
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return personList[section].title
    }

}
