//
//  MainView.swift
//  MVP
//
//  Created by Leonid Shchipkov on 24.03.2022.
//

import UIKit

protocol MainViewDelegate: AnyObject{
    func actionDidPressed()
    
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        
        return label
    }()
    
    lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push me", for: .normal)
        button.addTarget(self, action: #selector(didPressedActionButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textLabel.text = "Hello World!"
        backgroundColor = .blue
        addSubview(actionButton)
        addSubview(textLabel)
        
        NSLayoutConstraint.activate([actionButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                                     actionButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     textLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -20),
                                     textLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
                                     textLabel.rightAnchor.constraint(equalTo: self.rightAnchor)
                                    ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didPressedActionButton() {
        delegate?.actionDidPressed()
    }
}
