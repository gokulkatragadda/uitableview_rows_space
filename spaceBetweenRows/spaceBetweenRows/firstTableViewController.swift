//
//  firstTableViewController.swift
//  spaceBetweenRows
//
//  Created by Gokul Sai Katragadda on 2/4/17.
//  Copyright © 2017 Gokul Sai Katragadda. All rights reserved.
//

import Foundation
import UIKit

class firstTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section + 1 )"
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! tableViewCell
        cell.label.text = "Row " + "\(indexPath.row + 1)"
        // cell border width and border color properties are used to make space between rows
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor.white.cgColor
        return cell
    }
    
    
}
