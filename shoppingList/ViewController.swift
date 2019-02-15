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
        
        let itemOne = Item(name: "Milk", quantity: 2)
        let itemTwo = Item(name: "Blueberries")
        let itemThree = Item(name: "cheese")
        items = [itemOne,itemTwo,itemThree]
    }

    @IBAction func newItemButtonPressed(_ sender: Any)
    {
        if let newItemName = newItemTextFeild.text, newItemName != ""
        {
            let newItem = Item(name: newItemName)
            items.append(newItem)
            tableView.reloadData()
        }
        
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // can do let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        {
            
            let itemName = items[indexPath.row].name
            let itemQuantity = items[indexPath.row].quantity
            cell.textLabel?.text = itemName
            cell.detailTextLabel?.text = "Quantity: \(itemQuantity)"
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let nvc = segue.destination as! SecondViewController
            let currentItem = items[indexPath.row]
            nvc.passedItem = currentItem
        }
    }
   
}

