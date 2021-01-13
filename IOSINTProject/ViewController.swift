//
//  ViewController.swift
//  IOSINTProject
//
//  Created by Maxim on 2020. 10. 25..
//

import UIKit
import SnapKit

protocol MyViewControllerOutput {
    
    var onTap: (() -> Void)? { get set }
    func configure(image: UIImage, completion: (UIImage?) -> Void)
}

protocol MyViewControllerInput: class {
    func reload()
}

class ViewController: UIViewController {
    
    private var viewModel: MyViewControllerOutput

    private lazy var newImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tapImage))
        imageView.addGestureRecognizer(recognizer)
        
        return imageView
    }()
    
    init(viewModel: MyViewControllerOutput) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
        view.backgroundColor = .darkGray
        setupImageView()
    }
    
    private func setupImageView() {
        view.addSubview(newImage)
        NSLayoutConstraint.activate([
            newImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            newImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            newImage.widthAnchor.constraint(equalTo: view.widthAnchor),
            newImage.heightAnchor.constraint(equalTo: newImage.widthAnchor, multiplier: 2)
        ])
        
        viewModel.configure(image: UIImage(named: "example")!) { [weak self] image in
            self?.newImage.image = image
        }
    }
    
    @objc private func tapImage() {
        viewModel.onTap?()
    }
}

extension ViewController: MyViewControllerInput {
    
    func reload() {
        newImage.image = UIImage(named: "example")
    }
}

