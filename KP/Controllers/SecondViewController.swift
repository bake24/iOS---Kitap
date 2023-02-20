////
////  SecondViewController.swift
////  KP
////
////  Created by Бакдаулет Дуйсенбеков on 08.12.2022.
////
//
//import UIKit
//import SnapKit
//
//
//class SecondViewController: UIViewController {
//
//    lazy private var secondTableView: UITableView = {
//        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
//        tableView.backgroundColor = .clear
////        tableView.showsVerticalScrollIndicator = false
//        tableView.allowsSelection = true
//        tableView.layer.cornerRadius = 20
//        return tableView
//    }()
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupViews()
//        setupControllers()
//        view.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
//    }
//
//    func setupViews(){
//        view.addSubview(secondTableView)
//
//    }
//
//    func setupControllers(){
//        secondTableView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(10)
//            make.leading.trailing.equalToSuperview()
//        }
//    }
//
//}
//
////MARK: - Tableview datasource and delegate methods
//
//extension SecondViewController: UITableViewDataSource {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch indexPath.section {
//        case 0: let cell = SecondTableViewCell()
//            cell.backgroundColor = .clear
//            return cell
//        default:
//            return UITableViewCell()
//        }
//    }
//}
//
//extension SecondViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 80
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 340
//    }
//
//
//}


//

import UIKit
import SnapKit

final class SecondViewController: UIViewController {
    
    lazy var searchBar:UISearchBar = {
           let searchBar = UISearchBar()
           searchBar.layer.cornerRadius = 20
           searchBar.placeholder = " What book do you want find..."
           searchBar.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
           searchBar.searchTextField.backgroundColor = .orange
           searchBar.searchBarStyle = .minimal
           return searchBar
       }()
   
    
    lazy private var secondTableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.allowsSelection = false
        tableView.contentMode = .scaleToFill
        tableView.layer.cornerRadius = 40
        
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTableView.dataSource = self
        secondTableView.delegate = self
        view.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
        setupViews()
        setupConstraints()
        
        
    }
}

//MARK: - Tableview datasource and delegate methods

extension SecondViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0: let cell = SecondTableViewCell()
            cell.backgroundColor = .clear
            return cell
        default:
            return UITableViewCell()
        }
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1800
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1040
    }
    

}

//MARK: - Setup views and constraints

private extension SecondViewController {
    
    func setupViews() {
        view.addSubview(secondTableView)
        view.addSubview(searchBar)
    }
    
    func setupConstraints() {
       secondTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(70)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(10)
            make.leading.trailing.equalToSuperview()
        }
        searchBar.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().inset(55)
        }
    }
}


