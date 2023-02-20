//
//  FavoriteTableViewCell.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 10.12.2022.
//


import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    lazy private var bookPoster: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bremen.jpeg")
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    lazy private var bookName: UILabel = {
        let label = UILabel()
        label.text = "Bremen Music's"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    lazy private var bookRunning: UILabel = {
        let label = UILabel()
        label.text = "203 pages"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        return label
    }()
    
    lazy private var heartButton: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "heart")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .blue
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension FavoritesTableViewCell {
    
    func setupViews() {
        contentView.addSubview(bookPoster)
        contentView.addSubview(bookName)
        contentView.addSubview(bookRunning)
        contentView.addSubview(heartButton)
    }
    
    func setupConstraints() {
        bookPoster.snp.makeConstraints({ make in
            make.top.leading.bottom.equalToSuperview().inset(10)
            
            make.width.equalTo(100)
            
        })
        bookName.snp.makeConstraints({ make in
            make.leading.equalTo(bookPoster.snp.trailing).offset(10)
            make.top.equalToSuperview().inset(10)
        })
        bookRunning.snp.makeConstraints({ make in
            make.top.equalTo(bookName.snp.bottom).offset(5)
            make.leading.equalTo(bookPoster.snp.trailing).offset(10)
        })
        heartButton.snp.makeConstraints({ make in
            make.top.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(20)
        })
    }
}
