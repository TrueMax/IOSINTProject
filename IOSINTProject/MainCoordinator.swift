//
// MainCoordinator.swift
// IOSINTProject
// 
// Created by Maxim Abakumov on 2021. 01. 12.
//
// Copyright © 2020, Maxim Abakumov. MIT License.
//

import UIKit

class MainCoordinator {
    
    let navigator: UINavigationController
    let viewModel: MyViewModel
    
    init() {
        
        let result = ModuleFactory.makeMyController()
        navigator = UINavigationController(rootViewController: result.0)
        viewModel = result.1
        viewModel.onTap = {
            print("Это выходные данные модуля")
        }
    }
}
