//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by William Beutel on 4/9/18.
//  Copyright © 2018 Andrew Beutel. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        if (taskNameTextField.text != "") {
            // Obtains context for core data
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
            let task = Task(context: context)
            task.name = taskNameTextField.text!
            task.important = importantSwitch.isOn
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        // Pop back
        navigationController?.popViewController(animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
