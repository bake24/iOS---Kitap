//
//  CollectionViewCell.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 02.12.2022.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
        
    let bookImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .orange
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 20
        return image
    }()
    
    lazy  var bookLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.numberOfLines = 2
        return label
    }()
    let costLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        delegate?.navigationController?.pushViewController(OrderViewController(), animated: true)  
        
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func changeLabelText() {
//        let subviews = contentView.subviews
//        for subview in subviews {
//            if subview is UILabel {
//                let currentLabel = subview as! UILabel
//                currentLabel.textAlignment = .center
//                currentLabel.textColor = .white
//            }
//        }
//    }
    
    func setupViews() {
        contentView.addSubview(bookImage)
        contentView.addSubview(bookLabel)
        contentView.addSubview(costLabel)
    }
    
    func setupConstraints() {
        bookImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(25)
            make.leading.trailing.equalToSuperview().inset(7)
            
            
        }
        bookLabel.snp.makeConstraints { make in
            
            make.bottom.equalTo(bookImage.snp.bottom).inset(30)
            make.leading.equalToSuperview().inset(15)
            make.trailing.equalToSuperview().inset(10)
        }
        costLabel.snp.makeConstraints { make in
//            make.top.equalTo(bookLabel.snp.bottom).offset(5)
            make.trailing.equalToSuperview().inset(15)
            make.bottom.equalTo(bookImage.snp.bottom).inset(20)
        }
    }
}
