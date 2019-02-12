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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    @IBAction func newItemButtonPressed(_ sender: Any)
    {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

