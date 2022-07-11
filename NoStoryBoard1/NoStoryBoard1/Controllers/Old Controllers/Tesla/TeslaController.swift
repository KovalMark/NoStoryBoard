//
//  TeslaController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 16/05/2022.
//

import UIKit

//MARK: Для запуска этого экрана в SceneDelegate нужно указать TeslaController

final class TeslaController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    //MARK: Создаем элементы
    
    private let scrollView: UIScrollView = {
        
        let scroll = UIScrollView()
        scroll.backgroundColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    private let labelWelcome: UILabel = {
        
        let label = UILabel()
        label.text = "🐷 Welcome!"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = #colorLiteral(red: 0.1641006172, green: 0.1443990767, blue: 0.1230163649, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let labelWorking: UILabel = {
        
        let label = UILabel()
        label.text = "Kamal and Grant arrived. “Hi Kamal!” said Tara. “Are you going to the Halloween disco tomorrow?” “Yes. Hi Amy,” Kamal said, smiling. “Do you want to come and see our paintings after school?” “I’m coming too!” Tara insisted. :)"
        
        // изменим кол-во строк, чтобы влез наш текст (0 значит, что кол-во строк не ограничено)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0.1641006172, green: 0.1443990767, blue: 0.1230163649, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let labelAnyone: UILabel = {
        
        let label = UILabel()
        label.text = "After school, Kamal took the girls to the old house. It was very old and very dirty too. There was rubbish everywhere. The windows were broken and the walls were damp. It was scary. Amy didn’t like it. There were paintings of zombies and skeletons on the walls. “We’re going to take photos for the school art competition,” said Kamal. Amy didn’t like it but she didn’t say anything. “Where’s Grant?” asked Tara. “Er, he’s buying more paint.” Kamal looked away quickly. Tara thought he looked suspicious. “It’s getting dark, can we go now?” said Amy. She didn’t like zombies. 🐶"
        // изменим кол-во строк, чтобы влез наш текст (0 значит, что кол-во строк не ограничено)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0.1641006172, green: 0.1443990767, blue: 0.1230163649, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let labelPaul: UILabel = {
        
        let label = UILabel()
        label.text = "🏠 “What’s that?”"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = #colorLiteral(red: 0.1641006172, green: 0.1443990767, blue: 0.1230163649, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let firstButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.301881671, green: 0.4149282575, blue: 0.6072439551, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 20
        button.setTitle("Get you username ->", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let secondButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9564248919, green: 0.9365862608, blue: 0.8980651498, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.301881671, green: 0.4149282575, blue: 0.6072439551, alpha: 1)
        button.setTitle("Have an invite text? Sign in ->", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //MARK: Собираем элементы на View
    
    private func setupView() {
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(labelWelcome)
        scrollView.addSubview(labelWorking)
        scrollView.addSubview(labelAnyone)
        scrollView.addSubview(labelPaul)
        scrollView.addSubview(firstButton)
        scrollView.addSubview(secondButton)
    }
}

//MARK: Создаем constraints для наших элементов
extension TeslaController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            labelWelcome.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50),
            labelWelcome.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -50),
            labelWelcome.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 50),
            // центрируем наш элемент
            labelWelcome.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            labelWorking.topAnchor.constraint(equalTo: labelWelcome.bottomAnchor, constant: 50),
            labelWorking.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -50),
            labelWorking.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 50),
            labelWorking.widthAnchor.constraint(equalToConstant: 300),
            // центрируем наш элемент
            labelWorking.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            labelAnyone.topAnchor.constraint(equalTo: labelWorking.bottomAnchor, constant: 50),
            labelAnyone.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -50),
            labelAnyone.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 50),
            // центрируем наш элемент
            labelAnyone.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            labelPaul.topAnchor.constraint(equalTo: labelAnyone.bottomAnchor, constant: 50),
            labelPaul.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -50),
            labelPaul.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 50),
            // центрируем наш элемент
            labelPaul.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: labelPaul.bottomAnchor, constant: 75),
            firstButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            // ширина кнопки
            firstButton.widthAnchor.constraint(equalToConstant: 250),
            // высота самой кнопки
            firstButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 25),
            secondButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            // обязательно ставим нижний constraint для последнего элемента
            secondButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            // ширина кнопки
            secondButton.widthAnchor.constraint(equalToConstant: 220),
            // высота самой кнопки
            secondButton.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}
