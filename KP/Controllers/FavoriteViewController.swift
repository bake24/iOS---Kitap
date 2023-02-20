//
//  FavouriteViewController.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 10.12.2022.
//
import Foundation
import UIKit
import SnapKit

final class FavoriteViewController: UIViewController {
    
    lazy private var favoritesTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(FavoritesTableViewCell.self, forCellReuseIdentifier: Constants.Identifiers.FavoriteTableViewCell)
        tableView.backgroundColor = .clear
        tableView.allowsSelection = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
        
        favoritesTableView.delegate = self
        favoritesTableView.dataSource = self
        
        setupViews()
        setupConstraints()
    }
}

extension FavoriteViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FavoritesTableViewCell()
        cell.backgroundColor = .clear
        return cell
    }
    
}

extension FavoriteViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}


extension FavoriteViewController {
    
    func setupViews() {
        view.addSubview(favoritesTableView)
    }
    
    func setupConstraints() {
        favoritesTableView.snp.makeConstraints({
            make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(10)
        })
    }
}
