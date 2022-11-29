//
//  HomeScreenViewController.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

// Used a tableViewController just doing it a different way
class HomeScreenViewController: UITableViewController {
    
    let p = People()
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
        p.getCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedPerson = p.getSomeOne(index: indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath) as! HomeScreenCell
        
        cell.nameLabel.text = selectedPerson.name
        cell.emailLabel.text = selectedPerson.email
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = p.getSomeOne(index: indexPath.row)
        let detailVC = DetailViewController()
        detailVC.detailTitle = selectedCell?.name
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension HomeScreenViewController {
    
    func style() {
        navigationItem.title = "Friends"
    }
}


