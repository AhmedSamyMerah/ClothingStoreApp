
//  Ahmed Samy Merah 991418644
//  TableViewController.swift
//  AhmedSamyMerah_Practical
//
//  Created by Ahmed Samy Merah on 2018-11-02.
//  Copyright © 2018 Ahmed Samy Merah. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var options:[String] = ["ABOUT US","SHOP NOW"]
    var segId:[String] = ["A","B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return options.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOptions", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = options[indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segId[indexPath.row], sender: self)
    }

}
