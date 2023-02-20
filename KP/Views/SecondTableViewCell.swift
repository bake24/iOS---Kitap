//
//  secondTableViewCell.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 10.12.2022.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    

    
        
    lazy private var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Get Better With Kitap 📙"
        label.font = UIFont.systemFont(ofSize: 30)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        
        return label
    }()
    
    lazy internal var descriptionText: UILabel = {
        let label = UILabel()
        label.text = """
Kitap is the largest bookstore in Kazakhstan, which presents about 5,000 titles of books. Much attention in the assortment is paid to children's literature and educational games for children. The pride of the store is the department of gift and exclusive editions - unique books released in limited editions.
"""
        label.numberOfLines = 10
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 8)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy private var whyUs: UILabel = {
        let label = UILabel()
        label.text = "Why Us"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    //MARK: First Image data
    
    lazy  var firstImage: UIImageView = {
        let shymImage = UIImageView()
        shymImage.image = UIImage(named: "first.png")
        shymImage.contentMode = .scaleToFill
        shymImage.layer.cornerRadius = 20
        return shymImage
    }()
    
    lazy private var whyUsText1_1 : UILabel = {
       let label = UILabel()
        label.text = "High Quality"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .orange
        return label
    }()
    
    lazy private var whyUsText1_2 : UILabel = {
       let label = UILabel()
        label.text = "HighIt is very important for us that you get pleasure from watching. For our loved viewers, we offer only high quality films, serials and shows.Quality"
        
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 6
        label.textColor = .white
        return label
    }()
    
    //MARK: Second Image data
    
    lazy private var secondImage: UIImageView = {
        let shymImage = UIImageView()
        shymImage.image = UIImage(named: "second.png")
        shymImage.contentMode = .scaleToFill
        shymImage.layer.cornerRadius = 20
        return shymImage
    }()
    lazy private var whyUsText2_1 : UILabel = {
       let label = UILabel()
        label.text = "Affordable Price"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .systemOrange
        return label
    }()
    lazy private var whyUsText2_2 : UILabel = {
          let label = UILabel()
           label.text = "We have different and cool subscriptions with which you will get even more cool features&extensions so don't hesitate to buy a subscription!"
           
           label.font = UIFont.boldSystemFont(ofSize: 15)
           label.numberOfLines = 6
           label.textColor = .white
           return label
       }()
    
    //MARK: Second Image data
    lazy private var thirdImage: UIImageView = {
        let shymImage = UIImageView()
        shymImage.image = UIImage(named: "shymkent.jpg")
        shymImage.contentMode = .scaleToFill
        shymImage.layer.cornerRadius = 20
        return shymImage
    }()
    lazy private var whyUsText3_1 : UILabel = {
       let label = UILabel()
        label.text = "Convenience Price"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .systemOrange
        return label
    }()
    lazy private var whyUsText3_2 : UILabel = {
          let label = UILabel()
           label.text = "Our customers are always waiting for pleasant surprises - promotions, discounts, sweepstakes! :) Enjoy your reading!"
           label.font = UIFont.boldSystemFont(ofSize: 15)
           label.numberOfLines = 6
           label.textColor = .white
           return label
       }()

    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: SetupViews and Controllers
    func setupViews(){
        contentView.addSubview(myLabel)
        contentView.addSubview(descriptionText)
        contentView.addSubview(whyUs)
        contentView.addSubview(firstImage)
        contentView.addSubview(whyUsText1_1)
        contentView.addSubview(whyUsText1_2)
        contentView.addSubview(secondImage)
        contentView.addSubview(whyUsText2_1)
        contentView.addSubview(whyUsText2_2)
        contentView.addSubview(thirdImage)
        contentView.addSubview(whyUsText3_1)
        contentView.addSubview(whyUsText3_2)
    }
    
    func setupConstraints() {
        myLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalTo(contentView.safeAreaLayoutGuide.snp.top).offset(50)
        }
        descriptionText.snp.makeConstraints { make in
            make.top.equalTo(myLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        whyUs.snp.makeConstraints { make in
            make.top.equalTo(descriptionText.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
        firstImage.snp.makeConstraints { make in
            make.top.equalTo(whyUs.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(490)
            }
        whyUsText1_1.snp.makeConstraints { make in
            make.top.equalTo(firstImage.snp.top).inset(30)
            make.leading.equalToSuperview().inset(30)
        }
        whyUsText1_2.snp.makeConstraints { make in
            make.top.equalTo(whyUsText1_1.snp.bottom).offset(20)
            make.leading.equalToSuperview().inset(30)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        secondImage.snp.makeConstraints { make in
            make.top.equalTo(firstImage.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(250)
            }
        whyUsText2_1.snp.makeConstraints { make in
            make.top.equalTo(secondImage.snp.top).inset(30)
            make.leading.equalToSuperview().inset(30)
        }
        whyUsText2_2.snp.makeConstraints { make in
            make.top.equalTo(whyUsText2_1.snp.bottom).offset(20)
            make.leading.equalToSuperview().inset(30)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        thirdImage.snp.makeConstraints { make in
            make.top.equalTo(secondImage.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
        }
        whyUsText3_1.snp.makeConstraints { make in
            make.top.equalTo(thirdImage.snp.top).inset(30)
            make.leading.equalToSuperview().inset(30)
        }
        whyUsText3_2.snp.makeConstraints { make in
            make.top.equalTo(whyUsText3_1.snp.bottom).offset(20)
            make.leading.equalToSuperview().inset(30)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
    }

}
