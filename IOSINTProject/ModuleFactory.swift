//
// ModuleFactory.swift
// IOSINTProject
// 
// Created by Maxim Abakumov on 2021. 01. 12.
//
// Copyright © 2020, Maxim Abakumov. MIT License.
//

import UIKit

struct ModuleFactory {
    static func makeMyController() -> (UIViewController, MyViewModel) {
        let viewModel = MyViewModel()
        let controller = ViewController(viewModel: viewModel)
        viewModel.viewInput = controller
        return (controller, viewModel)
    }
}
