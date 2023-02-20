////
////  TableViewCell.swift
////  KP
////
////  Created by Бакдаулет Дуйсенбеков on 02.12.2022.
////
//
////
////  WeatherTableViewCell.swift
////  TH
////
////  Created by Бакдаулет Дуйсенбеков on 27.10.2022.
////
//
//
//import UIKit
//import SnapKit
//
//final class KitapTableViewCell: UITableViewCell {
//    
//    lazy private var myLabel: UILabel = {
//        let label = UILabel()
//        label.text = " "
//        label.textColor = .red
//        return label
//    }()
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        contentView.backgroundColor = .white
//        
//        setupViews()
//        setupConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func setText(with content: String) {
//        myLabel.text = content
//    }
//}
//
////MARK: - Setup views and constraints
//
//private extension KitapTableViewCell {
//    
//    func setupViews() {
//        contentView.addSubview(myLabel)
//    }
//    
//    func setupConstraints() {
//        myLabel.snp.makeConstraints { make in
//            make.edges.equalToSuperview().inset(10)
//            
//    
//            
//            
//        }
//    }
//}
