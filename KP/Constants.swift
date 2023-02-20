//
//  Constants.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 02.12.2022.
//

import Foundation
import UIKit

struct Constants{
    
    struct Identifiers{
        
        static let KitapTableViewCell = "KitapTableViewCell"
        static let KitapTableView = "KitapTableView"
        static let TableViewCellWithCollectionView = "TableViewCellWithCollectionView"
        static let CollectionViewCell = "CollectionViewCell"
        static let SecondTableViewCell = "SecondTableViewCell"
        static let SecondViewController = "SecondViewController"
        static let FavoriteTableViewCell = "FavoriteTableViewCell"
        //        static let ForecastTableViewCell = "ForecastTableViewCell"
        
        static let leftDistanceToView: CGFloat = 40
        static let rightDistanceToView: CGFloat = 40
        static let galleryMinimumLineSpacing: CGFloat = 10
        
        static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.Identifiers.leftDistanceToView - Constants.Identifiers.rightDistanceToView - (Constants.Identifiers.galleryMinimumLineSpacing / 2)) / 2
        
    }
}
