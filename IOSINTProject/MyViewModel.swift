//
// MyViewModel.swift
// IOSINTProject
// 
// Created by Maxim Abakumov on 2020. 12. 24.
//
// Copyright © 2020, Maxim Abakumov. MIT License.
//

import UIKit
import iOSIntPackage

final class MyViewModel: MyViewControllerOutput {
    
    weak var viewInput: MyViewControllerInput?
    
    var onTap: (() -> Void)? 
    
    private var imageProcessor: ImageProcessor {
        return ImageProcessor()
    }
    
    func configure(image: UIImage, completion: (UIImage?) -> Void) {
        imageProcessor.processImage(
            sourceImage: image,
            filter: .colorInvert,
            completion: completion)
    }
    
}
