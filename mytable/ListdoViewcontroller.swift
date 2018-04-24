//
//  ViewController.swift
//  mytable
//
//  Created by Naveen Chowdary on 24/04/18.
//  Copyright © 2018 Naveen Chowdary. All rights reserved.
//
import UIKit

class ListdoViewcontroller: UITableViewController {

    let names  = ["hello","myname","sachin","venkat","rahul","Kohgli"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "notecell", for: indexPath)
        
        
        cell.textLabel?.text = names[indexPath.row]
        
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }
    


}

