//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by EdwardOu on 3/20/19.
//  Copyright © 2019 unknown. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinatos=[Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController=navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        
        vc.coordinator=self;
        
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription(){
         let vc = BuyViewController.instantiate()
        
        vc.coordinator=self;
        
        navigationController.pushViewController(vc, animated: true)
        
    }
    
    func createAccount(){
        let vc = CreateAccountViewController.instantiate();
        
       
        
        vc.coordinator=self;
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
