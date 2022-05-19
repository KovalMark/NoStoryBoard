//
//  AllButtonController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 19/05/2022.
//

import UIKit

final class AllButtonController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        view.backgroundColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
    }
    
    // MARK: Views
    
    private let scrollView: UIScrollView = {
        
        let scroll = UIScrollView()
        scroll.backgroundColor = #colorLiteral(red: 0.4818786383, green: 0.4131761491, blue: 0.4958377481, alpha: 1)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    // MARK: Setup Views
    
    private func setupViews() {
        view.addSubview(scrollView)
    }
}

// MARK: Extension for constraint

extension AllButtonController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
