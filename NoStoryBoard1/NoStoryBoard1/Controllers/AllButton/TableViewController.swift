//
//  TableViewController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 05/07/2022.
//

import UIKit

class TableViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private let tableView: UITableView = {
        
        let table = UITableView()
        table.backgroundColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }()
    
    private func setupViews() {
        view.addSubview(tableView)
    }
}

extension TableViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
