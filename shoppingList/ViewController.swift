//
//  ViewController.swift
//  shoppingList
//
//  Created by Olivia Mellen on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//  :)

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var newItemTextFeild: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var items:[Item] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let itemOne = Item(name: "Milk")
        let itemTwo = Item(name: "Blueberries")
        let itemThree = Item(name: "cheese")
        items = [itemOne,itemTwo,itemThree]
    }

    @IBAction func newItemButtonPressed(_ sender: Any)
    {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // can do let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        {
            
            let itemName = items[indexPath.row].name
            cell.textLabel?.text = itemName
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
   
}

