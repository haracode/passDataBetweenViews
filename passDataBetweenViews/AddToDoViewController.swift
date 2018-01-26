//
//  AddToDoViewController.swift
//  passDataBetweenViews
//
//  Created by Greg Haranczyk on 1/25/18.
//  Copyright © 2018 Greg Haranczyk. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var addToDotextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addToDo(_ sender: Any) {
        ToDoController.addToDo(newToDo: addToDotextField.text!)
        dismiss(animated: true, completion: nil)
    }
    


}
