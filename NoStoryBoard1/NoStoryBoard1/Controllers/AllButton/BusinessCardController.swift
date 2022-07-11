//
//  ViewController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 11/07/2022.
//

import UIKit

// MARK: BusinessCardController
class BusinessCardController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpConstraint()
    }
    
    // MARK: view
    private let scrollView: UIScrollView = {
        
        let scroll = UIScrollView()
        scroll.backgroundColor = #colorLiteral(red: 0.4865377545, green: 0.4129810333, blue: 0.4957652688, alpha: 1)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    private let photo: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(systemName: "livephoto")
        image.backgroundColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        image.tintColor = #colorLiteral(red: 0.2237454355, green: 0.2437752783, blue: 0.3576468825, alpha: 1)
        image.layer.cornerRadius = 120
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private let labelName: UILabel = {
        
        let label = UILabel()
        label.text = "Koval Mark"
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let labelSecondName: UILabel = {
        
        let label = UILabel()
        label.text = "iOS Developer"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: setUpView
    private func setUpView() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(photo)
        scrollView.addSubview(labelName)
        scrollView.addSubview(labelSecondName)
    }
}

// MARK: setUpConstraint
extension BusinessCardController {
    private func setUpConstraint() {
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50),
            photo.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            photo.heightAnchor.constraint(equalToConstant: 250),
            photo.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            labelName.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 25),
            labelName.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            labelSecondName.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 25),
            labelSecondName.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            labelSecondName.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -50)
        ])
    }
}
