//
//  TabBarController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 15/05/2022.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItem()
    }
    
    // метод загрузки наших контроллеров для таб бара
    private func loadItem() {
        
        // обозначаем через переменные наши контроллеры
        let iPhoneVC = iPhoneTableViewController()
        let iPadVC = iPadCollectionViewController()
        
        // устанавливаем в массиве наши переменные в том порядке, в котором хотим чтобы ни отображались
        setViewControllers([iPhoneVC, iPadVC], animated: true)
        
        // проверяем наши айтемы что они действительно есть
        guard let items = tabBar.items else { return }
        
        // даем названия нашим айтемам
        items[0].title = "iPhone"
        items[1].title = "iPad"
        
        // применяем картинки к нашим айтемам
        items[0].image = UIImage(systemName: "iphone")
        items[1].image = UIImage(systemName: "ipad.landscape")
    }
}
