//
//  TableViewController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 05/07/2022.
//

import UIKit

class CityViewController: UIViewController {
    
    private let data = City.getCityList()
    private let identifier = "myCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpConstraints()
    }
    
    // MARK: View
    private let myTableView: UITableView = {
        
        let table = UITableView()
        table.backgroundColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        table.separatorColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }()
    
    // MARK: Setup Views
    private func setUpView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        view.addSubview(myTableView)
    }
}

// MARK: Delegate
extension CityViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

// MARK: DataSource
extension CityViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.backgroundColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        let city = data[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = city.capital
        content.secondaryText = city.country
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: setUpConstraints
extension CityViewController {
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            myTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            myTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
