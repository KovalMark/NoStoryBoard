//
//  AllButtonController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 19/05/2022.
//

import UIKit

class AllButtonController: UIViewController {
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupPortraitConstraints()
        customNavigationBar()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            setupLandscapeConstraints()
        } else {
            print("Portrait")
            setupPortraitConstraints()
        }
    }
    
    // MARK: scrollView
    private let scrollView: UIScrollView = {
        
        let scroll = UIScrollView()
        scroll.backgroundColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    // MARK: tableButton
    private let tableButton: UIButton = {
        
        let image = UIImage(systemName: "table")
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.2237454355, green: 0.2437752783, blue: 0.3576468825, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("City's Table", for: .normal)
        button.layer.cornerRadius = 70
        button.addTarget(self, action: #selector(pressTableButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func pressTableButton() {
        let tableController = CityViewController()
        navigationController?.pushViewController(tableController, animated: true)
    }
    
    // MARK: collectionButton
    private let collectionButton: UIButton = {
        
        let image = UIImage(systemName: "photo.fill.on.rectangle.fill")
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.7627497315, green: 0.4687284231, blue: 0.396117419, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.4865377545, green: 0.4129810333, blue: 0.4957652688, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("CollectionView", for: .normal)
        button.layer.cornerRadius = 70
        button.addTarget(self, action: #selector(pressCollectionButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func pressCollectionButton() {
        let collectionController = CollectionViewController()
        navigationController?.pushViewController(collectionController, animated: true)
    }
    
    // MARK: tabBarButton
    private let tabBarButton: UIButton = {
        
        let image = UIImage(systemName: "sidebar.left")
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2237454355, green: 0.2437752783, blue: 0.3576468825, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("TabBarView", for: .normal)
        button.layer.cornerRadius = 70
        button.addTarget(self, action: #selector(pressTabBarButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func pressTabBarButton() {
        let tabBarController = TabBarViewController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }
    
    // MARK: viewButton
    private let viewButton: UIButton = {
        
        let image = UIImage(systemName: "viewfinder.circle.fill")
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4865377545, green: 0.4129810333, blue: 0.4957652688, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.7627497315, green: 0.4687284231, blue: 0.396117419, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Business Card", for: .normal)
        button.layer.cornerRadius = 70
        button.addTarget(self, action: #selector(pressViewButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func pressViewButton() {
        let viewController = SNPCardController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    // MARK: Setup Views
    private func setupViews() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(tableButton)
        scrollView.addSubview(collectionButton)
        scrollView.addSubview(tabBarButton)
        scrollView.addSubview(viewButton)
    }
}

// MARK: Portrait activate constraint
extension AllButtonController {
    private func setupPortraitConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            tableButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 125),
            tableButton.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 25),
            tableButton.heightAnchor.constraint(equalToConstant: 150),
            tableButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            collectionButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 125),
            collectionButton.leftAnchor.constraint(equalTo: tableButton.rightAnchor, constant: 65),
            collectionButton.heightAnchor.constraint(equalToConstant: 150),
            collectionButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            tabBarButton.topAnchor.constraint(equalTo: tableButton.bottomAnchor, constant: 200),
            tabBarButton.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 25),
            tabBarButton.heightAnchor.constraint(equalToConstant: 150),
            tabBarButton.widthAnchor.constraint(equalToConstant: 150),
            tabBarButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            viewButton.topAnchor.constraint(equalTo: collectionButton.bottomAnchor, constant: 200),
            viewButton.leftAnchor.constraint(equalTo: tabBarButton.rightAnchor, constant: 65),
            viewButton.heightAnchor.constraint(equalToConstant: 150),
            viewButton.widthAnchor.constraint(equalToConstant: 150),
            viewButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
        ])
        print("setupPortraitConstraints")
    }
}

// MARK: Landscape constraint
extension AllButtonController {
    private func setupLandscapeConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            tableButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 25),
            tableButton.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 25),
            tableButton.heightAnchor.constraint(equalToConstant: 150),
            tableButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            collectionButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 25),
            collectionButton.leftAnchor.constraint(equalTo: tableButton.rightAnchor, constant: 50),
            collectionButton.heightAnchor.constraint(equalToConstant: 150),
            collectionButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            tabBarButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 25),
            tabBarButton.leftAnchor.constraint(equalTo: collectionButton.rightAnchor, constant: 50),
            tabBarButton.heightAnchor.constraint(equalToConstant: 150),
            tabBarButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            viewButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 25),
            viewButton.leftAnchor.constraint(equalTo: tabBarButton.rightAnchor, constant: 50),
            viewButton.heightAnchor.constraint(equalToConstant: 150),
            viewButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        print("setupLandscapeConstraints")
    }
}
