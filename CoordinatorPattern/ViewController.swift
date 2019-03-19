//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by EdwardOu on 3/18/19.
//  Copyright © 2019 unknown. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,Storyboarded{

    weak var coordinator:MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    

    @IBAction func createTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

