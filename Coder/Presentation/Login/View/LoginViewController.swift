//
//  LoginViewController.swift
//  Coder
//
//  Created by 박예린 on 8/19/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let container: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.spacing = 4
        stackView.axis = .vertical
        stackView.alignment = .center
        return stackView
    }()
    
    private let logo: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 52, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Coder"
        label.numberOfLines = 1
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.container)
        self.container.addArrangedSubview(self.logo)
        
        NSLayoutConstraint.activate([
            self.container.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.container.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
        ])
    }
}
