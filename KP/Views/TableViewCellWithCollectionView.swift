////
////  TableViewCellWithCollectionViewTableViewCell.swift
////  KP
////
////  Created by Бакдаулет Дуйсенбеков on 02.12.2022.
////
//
//import UIKit
//import SnapKit
//
//class TableViewCellWithCollectionView: UITableViewCell {
//
//    lazy private var bookImageCollectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: Constants.Identifiers.CollectionViewCell)
//        collectionView.backgroundColor = .red
//        collectionView.showsHorizontalScrollIndicator = false
//        return collectionView
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        contentView.backgroundColor = .clear
//        contentView.layer.masksToBounds = true
//        contentView.layer.cornerRadius = 20
//        bookImageCollectionView.dataSource = self
//        bookImageCollectionView.delegate = self
//
//        setupViews()
//        setupConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//    func setupViews() {
//        contentView.addSubview(bookImageCollectionView)
//    }
//    func setupConstraints() {
//        bookImageCollectionView.snp.makeConstraints { make in
//            make.edges.equalToSuperview().inset(40)
//            make.top.equalToSuperview().inset(90)
//        }
//    }
////    override func awakeFromNib() {
////        super.awakeFromNib()
////        // Initialization code
////    }
////
////    override func setSelected(_ selected: Bool, animated: Bool) {
////        super.setSelected(selected, animated: animated)
////
////        // Configure the view for the selected state
////    }
//
//}
//
////MARK: Collection view data source and delegate methods
//
//extension TableViewCellWithCollectionView: UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = bookImageCollectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.CollectionViewCell, for: indexPath) as! CollectionViewCell
//        return cell
//    }
//}
//
//extension TableViewCellWithCollectionView: UICollectionViewDelegate {
//
//
//}
//extension TableViewCellWithCollectionView: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: 55, height: 100)
//    }
//}



//  TableViewCellWithCollectionView.swift
//  MyFirstApp
//
//  Created by Бакдаулет Дуйсенбеков on 28.10.2022.


import UIKit
import SnapKit

final class TableViewCellWithCollectionView: UITableViewCell {
     
    var cells = KitapModel.fetchSushi()
    
    lazy private var actualKitapCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .horizontal

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: Constants.Identifiers.CollectionViewCell)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.allowsSelection = true
        return collectionView
    }()

    lazy private var backgroundBlurEffectView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.systemUltraThinMaterialDark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blurEffectView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

//        contentView.backgroundColor = .red
        contentView.layer.masksToBounds = false
        contentView.layer.cornerRadius = 20
        
        actualKitapCollectionView.allowsSelection = true
        actualKitapCollectionView.dataSource = self
        actualKitapCollectionView.delegate = self

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(cells: [KitapModel]){
        self.cells = cells
    }
}


//MARK: - Collection view data source and delegate methods

extension TableViewCellWithCollectionView: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = actualKitapCollectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.CollectionViewCell, for: indexPath) as! CollectionViewCell
        cell.bookImage.image = cells[indexPath.row].mainImage
        cell.bookLabel.text = cells[indexPath.row].kitapName
        cell.costLabel.text = "$\(cells[indexPath.row].cost)"
        return cell
    }
}

extension TableViewCellWithCollectionView: UICollectionViewDelegate {
//    func callAction() {
//            print("pushing view")
//            let view = OrderViewController()
//            TableViewCellWithCollectionView().navigationController?.pushViewController(view, animated: true)
//        }
}

extension TableViewCellWithCollectionView: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 195, height: 350)
    }
    
}

//MARK: - Setup views and constraints

 extension TableViewCellWithCollectionView {

    func setupViews() {
        contentView.addSubview(backgroundBlurEffectView)
        contentView.addSubview(actualKitapCollectionView)
    }

    func setupConstraints() {
        backgroundBlurEffectView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
            make.top.equalToSuperview().offset(50)
            make.bottom.equalToSuperview().offset(1)
        }
        actualKitapCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(10)
            
        }
    }
}


