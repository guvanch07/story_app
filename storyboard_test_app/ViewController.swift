//
//  ViewController.swift
//  storyboard_test_app
//
//  Created by Macbook on 30.05.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var labelcollection: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func submitButton(_ sender: UIButton) {
        print("onPressed")
        label.text = "hello label"
        
    }
    
}

