//
//  AllButtonController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 19/05/2022.
//

import UIKit

// MARK: AllButtonController

class AllButtonController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    // MARK: Views
    
    private let scrollView: UIScrollView = {
        
        let scroll = UIScrollView()
        scroll.backgroundColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    private let tableButton: UIButton = {
        
        let image = UIImage(systemName: "table")
        let button = UIButton(type: .custom)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.2237454355, green: 0.2437752783, blue: 0.3576468825, alpha: 1)
        button.setTitle("TableView", for: .normal)
        button.layer.cornerRadius = 70
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let collectionButton: UIButton = {
        
        let image = UIImage(systemName: "photo.fill.on.rectangle.fill")
        let button = UIButton(type: .custom)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.7627497315, green: 0.4687284231, blue: 0.396117419, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.4865377545, green: 0.4129810333, blue: 0.4957652688, alpha: 1)
        button.setTitle("CollectionView", for: .normal)
        button.layer.cornerRadius = 70
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let tabBarButton: UIButton = {
        
        let image = UIImage(systemName: "sidebar.left")
        let button = UIButton(type: .custom)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2237454355, green: 0.2437752783, blue: 0.3576468825, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        button.setTitle("TabBarView", for: .normal)
        button.layer.cornerRadius = 70
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let viewButton: UIButton = {
        
        let image = UIImage(systemName: "viewfinder.circle.fill")
        let button = UIButton(type: .custom)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4865377545, green: 0.4129810333, blue: 0.4957652688, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.7627497315, green: 0.4687284231, blue: 0.396117419, alpha: 1)
        button.setTitle("View", for: .normal)
        button.layer.cornerRadius = 70
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // MARK: Setup Views
    
    private func setupViews() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(tableButton)
        scrollView.addSubview(collectionButton)
        scrollView.addSubview(tabBarButton)
        scrollView.addSubview(viewButton)
    }
}

// MARK: Extension for constraint

extension AllButtonController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            tableButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 250),
            tableButton.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 25),
            tableButton.heightAnchor.constraint(equalToConstant: 150),
            tableButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            collectionButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 250),
            collectionButton.leftAnchor.constraint(equalTo: tableButton.rightAnchor, constant: 65),
            collectionButton.heightAnchor.constraint(equalToConstant: 150),
            collectionButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            tabBarButton.topAnchor.constraint(equalTo: tableButton.bottomAnchor, constant: 150),
            tabBarButton.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 25),
            tabBarButton.heightAnchor.constraint(equalToConstant: 150),
            tabBarButton.widthAnchor.constraint(equalToConstant: 150),
            tabBarButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            viewButton.topAnchor.constraint(equalTo: collectionButton.bottomAnchor, constant: 150),
            viewButton.leftAnchor.constraint(equalTo: tabBarButton.rightAnchor, constant: 65),
            viewButton.heightAnchor.constraint(equalToConstant: 150),
            viewButton.widthAnchor.constraint(equalToConstant: 150),
            viewButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
        ])
    }
}
