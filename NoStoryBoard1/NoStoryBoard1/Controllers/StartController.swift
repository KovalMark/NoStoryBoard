//
//  StartController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 15/05/2022.
//

import UIKit

final class StartController: UIViewController {
    
//MARK: Для запуска этого экрана в SceneDelegate нужно указать StartController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    // MARK: Создаем элементы
    // создаем переменную, которая будет нашим UIScrollView
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .white
        // TAMIC (translatesAutoresizingMaskIntoConstraints) необходимо устанавливать для того, чтобы отрисовывать наш элемент так, как мы хотим
        scroll.translatesAutoresizingMaskIntoConstraints = false
        
        return scroll
    }()
    
    private let imageView: UIImageView = {
        let imageLogo = UIImageView()
        imageLogo.image = UIImage(named: "appleIcon")
        // настройка того, как должно отрисовываться
        imageLogo.contentMode = .scaleAspectFit
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        
        return imageLogo
    }()
    
    private let firstText: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        text.layer.cornerRadius = 10
        text.textColor = .black
        // отступ от левого края при печатании
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: text.frame.height))
        text.leftViewMode = .always
        text.clearButtonMode = .always
        text.returnKeyType = .done
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    private let secondText: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        text.layer.cornerRadius = 10
        text.textColor = .black
        // отступ от левого края при печатании
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: text.frame.height))
        text.leftViewMode = .always
        text.clearButtonMode = .always
        text.returnKeyType = .done
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    private let firstButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.6021385789, green: 0.6120921969, blue: 0.6205213666, alpha: 1)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.setTitle("Apple", for: .normal)
        // вызываем какое-то действие для нашей кнопки. Вызываем саму себя, выбираем селектор для действия при нажатии на кнопку (for)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc private func tapButton() {
        let newScreen = TabBarController()
        newScreen.modalPresentationStyle = .fullScreen
        
        if firstText.text == "" && secondText.text == "" {
            present(newScreen, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "ERROR", message: "Try again", preferredStyle: .actionSheet)
            
            let buttonAction = UIAlertAction(title: "Yes", style: .default) { _ in
                self.firstText.text?.removeAll()
                self.secondText.text = ""
            }
            alert.addAction(buttonAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    // MARK: добавление элементов в определенные контейнеры
    private func setupView() {
        // добавляем в родительский класс view наш scrollView, хранящий созданные нами элементы элементы
        view.addSubview(scrollView)
        view.backgroundColor = .gray
        
        // помещаем в наш scrollView созданные нами элементы
        scrollView.addSubview(imageView)
        scrollView.addSubview(firstText)
        scrollView.addSubview(secondText)
        scrollView.addSubview(firstButton)
    }
}

// MARK: создаем расширение, в котором добавляем констрейнты для наших элементов
extension StartController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1/1),
            imageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            firstText.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            firstText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            firstText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            firstText.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            secondText.topAnchor.constraint(equalTo: firstText.bottomAnchor, constant: 50),
            secondText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            secondText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            secondText.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: secondText.bottomAnchor, constant: 50),
            firstButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            firstButton.widthAnchor.constraint(equalToConstant: 250),
            firstButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -50)
        ])
    }
}
