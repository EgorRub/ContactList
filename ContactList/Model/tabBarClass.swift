//
//  tabBarClass.swift
//  ContactList
//
//  Created by Егор on 28.07.2021.
//

import Foundation

import UIKit


class TabBarViewControllers: UITabBarController {

    
    let person = DataManager.shared.getPersonList()
    
    override func viewDidLoad() {
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let personListVC =
                    viewController as? PersonListTableViewController {
//                    personListVC.personList = person
            } else {
                let personDetailsVC =
                    viewController as! PersonDetailsTableViewController
                    personDetailsVC.personList = person
                }
            }
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarController.viewControllers else { return }
//
//        for viewController in viewControllers {
//            if let personListVC = segue.destination as? PersonListTableViewController {
//                personListVC.personList = person
//            } else if let personDetailsVC = segue.destination as? PersonDetailsTableViewController {
//                personDetailsVC.personDetails = person
//            }
//        }
//
//    }

