//
//  ViewController.swift
//  MoneyGoals
//
//  Created by Dawid Łabno on 13/11/2022.
//

import UIKit

class ListViewController: UITableViewController {
    
    let goal = ["Holiday", "New car", "New iPhone"]
    let detailsSegueIdentifier = "ShowDetailsSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if  segue.identifier == detailsSegueIdentifier {
            let destination = segue.destination as? DetailViewController
        }
        
    }
    
    
    //MARK - TavleView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goal.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "GoalCell")
        let goal = goal[indexPath.row]
        
        cell.textLabel?.text = goal
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDetailsSegue", sender: self)
    }
    


}

