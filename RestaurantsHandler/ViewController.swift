//
//  ViewController.swift
//  RestaurantsHandler
//
//  Created by etudiant on 02/05/2018.
//  Copyright © 2018 thomasecalle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var categoryField: UITextField!
    @IBOutlet var priceField: UITextField!
    @IBOutlet var imageField: UITextField!
    @IBOutlet var isVeganSwitch: UISwitch!
    @IBOutlet var isGlutenField: UISwitch!
    @IBOutlet var descriptionField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(_ sender: UIButton) {
        let name: String? = nameField.text
        let category: String? = categoryField.text
        let price: String? = priceField.text
        let image: String? = imageField.text
        let isVegan: Bool = isVeganSwitch.isOn
        let isGlutenFree: Bool = isGlutenField.isOn
        let description: String? = descriptionField.text
        
        if (name != nil && category != nil && image != nil && description != nil)
        {
            let item = MenuItem(name: name!, itemDetails: description!, price: Double(price!)!, category: category!, imageURL: image!, isVegan: isVegan, isGlutenFree: isGlutenFree)
            
            print(item)
        }
        else {
            print("missing some values")
        }
        
    }
    
}

