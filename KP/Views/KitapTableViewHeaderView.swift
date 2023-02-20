//
//  KitapTableViewHeaderView.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 30.11.2022.
//

import UIKit
import SnapKit

class KitapTableViewHeaderView: UITableViewHeaderFooterView {
    
    lazy  var shymImage: UIImageView = {
        var shymImage = UIImageView()
        shymImage.image = UIImage(named: "shym.jpeg")
        
        shymImage.contentMode = .scaleToFill
        shymImage.clipsToBounds = true
        shymImage.layer.cornerRadius = 25
        return shymImage
    }()
    
    lazy private var kitapLabel: UILabel = {
        let label = UILabel()
        label.text = "Shymkent ✨🫶🏻"
        label.textColor = .systemOrange
        label.font = UIFont.boldSystemFont(ofSize: 33)
        return label
    }()
    
    lazy private var headerContent: UILabel = {
        let label = UILabel()
        label.text = "The store of the city of Shymkent is built according to modern and latest high- tech standards. Both elderly and the youngest readers can find books here. "
        label.font = UIFont.systemFont(ofSize: 3)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 6
        label.textColor = .white
        
        return label
    }()
    
    lazy private var backgroundBlurEffectView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.systemUltraThinMaterialDark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = contentView.bounds
        blurEffectView.alpha = 0.7
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blurEffectView
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.layer.cornerRadius = 20
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews(){
        
        contentView.addSubview(shymImage)
        contentView.addSubview(backgroundBlurEffectView)
        contentView.addSubview(kitapLabel)
        contentView.addSubview(headerContent)
        
    }
    func setupConstraints(){
        kitapLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.top.equalToSuperview().inset(60)
        }
        backgroundBlurEffectView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.bottom.equalToSuperview()
            }
        shymImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.bottom.equalToSuperview()
            }
        headerContent.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.bottom.equalToSuperview().inset(90)
            }
            
        }
    }
    

