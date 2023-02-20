//
//  ViewController.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 29.11.2022.
//

//import UIKit
//import SnapKit
//
//final class KitapViewController: UIViewController {
//
//    lazy private var tableView: UITableView = {
//        let tableView = UITableView()
//        let headerView = KitapTableViewHeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 275))
//        tableView.tableHeaderView = headerView
//        tableView.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
//        return tableView
//}()
//
//    lazy var searchBar:UISearchBar = {
//        let searchBar = UISearchBar()
//        searchBar.layer.cornerRadius = 30
//        searchBar.placeholder = " What book do you want find..."
//        searchBar.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
//        searchBar.searchTextField.backgroundColor = .orange
//        searchBar.searchBarStyle = .minimal
//        return searchBar
//    }()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupViews()
//        setupConstraints()
//    }
//
//    func setupViews(){
//        view.addSubview(tableView)
//        view.addSubview(searchBar)
//    }
//    func setupConstraints(){
//        tableView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
//
//        searchBar.snp.makeConstraints { make in
//            make.leading.trailing.equalToSuperview()
//            make.top.equalToSuperview().inset(60)
//        }
//
//    }
//
//    }
//
////MARK: - Tableview datasource and delegate methods
//extension KitapViewController: UITableViewDataSource {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Identifiers.KitapTableView, for: indexPath) as! KitapTableViewCell
//            return cell
//        }
//
//}


//
//  ViewController.swift
//  TH
//
//  Created by Бакдаулет Дуйсенбеков on 13.10.2022.
//

//

import UIKit
import SnapKit

final class KitapViewController: UIViewController {
    
    
   
    
    lazy private var weatherTableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
        let headerView = KitapTableViewHeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 275))
        
        tableView.tableHeaderView = headerView
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.allowsSelection = true
        tableView.layer.cornerRadius = 20
        
        return tableView
    }()
    
    lazy var searchBar:UISearchBar = {
           let searchBar = UISearchBar()
           searchBar.layer.cornerRadius = 20
           searchBar.placeholder = " What book do you want find..."
           searchBar.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
           searchBar.searchTextField.backgroundColor = .orange
           searchBar.searchBarStyle = .minimal
           return searchBar
       }()
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherTableView.dataSource = self
        weatherTableView.delegate = self
        weatherTableView.allowsSelection = true
        
        view.backgroundColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
        setupViews()
        setupConstraints()
        
        
    }
}

//MARK: - Tableview datasource and delegate methods

extension KitapViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewCellWithCollectionView()
        cell.backgroundColor = .clear
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = OrderViewController()
        navigationController?.pushViewController(vc, animated: false)
    }
}

extension KitapViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 340
    }
    

}

//MARK: - Setup views and constraints

private extension KitapViewController {
    
    func setupViews() {
        
        view.addSubview(weatherTableView)
        view.addSubview(searchBar)
    }
    
    func setupConstraints() {
        
        weatherTableView.snp.makeConstraints { make in
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

/*

 SOLID = single respnsibility, open-closed, liskov,
 DRY = Don't repeat yourself
 KISS = keep it simple stupid
 
*/
