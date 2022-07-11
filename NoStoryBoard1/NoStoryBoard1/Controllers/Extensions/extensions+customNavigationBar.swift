//
//  extensions+customNavigationBar.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 11/07/2022.
//

import UIKit

extension UIViewController {
    
    func customNavigationBar() {
        self.navigationItem.title = ""
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
