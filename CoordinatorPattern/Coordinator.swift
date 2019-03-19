//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by EdwardOu on 3/20/19.
//  Copyright © 2019 unknown. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinatos: [Coordinator]{get set}
    
    var navigationController:UINavigationController {get set}
    
    func start()
    
    
}
