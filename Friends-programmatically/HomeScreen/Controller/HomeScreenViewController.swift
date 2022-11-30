//
//  HomeScreenViewController.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

// Used a tableViewController just doing it a different way
class HomeScreenViewController: UITableViewController {
    
    let people = PersonList()
    let reuseID = "HomeScreenCell"
    var selectedCell: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        style()
        
    }
}

// table view
extension HomeScreenViewController{
    
    func setup() {
        tableView.register(HomeScreenCell.self, forCellReuseIdentifier: reuseID)
        tableView.rowHeight = 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.getCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedPerson = people.getFriendAtPosition(index: indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath) as! HomeScreenCell
        
        cell.nameLabel.text = selectedPerson.getUserName()
        cell.emailLabel.text = selectedPerson.getEmail()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = people.getFriendAtPosition(index: indexPath.row)
        let detailVC = DetailViewController()
        detailVC.detailTitle = selectedCell?.getUserName()
        
        navigationController?.pushViewController(detailVC, animated: false)
    }
}

extension HomeScreenViewController {
    
    func style() {
        navigationItem.title = "Friends"
    }
}


