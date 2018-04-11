//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by William Beutel on 4/11/18.
//  Copyright © 2018 Andrew Beutel. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var previousVC = TasksViewController()
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "❗️ \(task.name)"
        } else {
            taskLabel.text = task.name
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    



}
