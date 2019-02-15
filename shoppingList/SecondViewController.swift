//
//  SecondViewController.swift
//  shoppingList
//
//  Created by Olivia Mellen on 2/14/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var quantityLabel: UILabel!
    var passedItem: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.title = passedItem.name
        quantityLabel.text = "quanity: \(passedItem.quantity)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
