//
//  ViewController.swift
//  passDataBetweenViews
//
//  Created by Greg Haranczyk on 1/25/18.
//  Copyright © 2018 Greg Haranczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        mainTextView.text = ""
        for currentToDo in ToDoController.toDoArray {
            mainTextView.text = "\(mainTextView.text!)\n\(currentToDo)"
        }
    }


}

