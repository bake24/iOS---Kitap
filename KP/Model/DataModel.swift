////
////  DataModel.swift
////  KP
////
////  Created by Бакдаулет Дуйсенбеков on 30.01.2023.
////
//

import Foundation

import UIKit

struct KitapModel {
    var mainImage: UIImage
    var kitapName: String
    var smallDescription: String
    var cost: String
    
    static func fetchSushi() -> [KitapModel] {
        let firstItem = KitapModel(mainImage: UIImage(named: "tisacha_solnts")!,
                               kitapName: "Тысяча сияющих солнц",
                               smallDescription: "Original Japanese",
                               cost: "5000tg")
        let secondItem = KitapModel(mainImage: UIImage(named: "monach")!,
                                    kitapName: "Монах который продал свой Феррари",
                                    smallDescription: "Original Japanese",
                                    cost: "4000tg")
        let thirdItem = KitapModel(mainImage: UIImage(named: "do_vstrichi_s_toboi")!,
                                   kitapName: "До встречи с тобой",
                                   smallDescription: "Original Japanese",
                                   cost: "3000tg")
        
        let fouthItem = KitapModel(mainImage: UIImage(named: "eljeron")!,
                                   kitapName: "Цветы для Элджерона",
                                   smallDescription: "Original Japanese",
                                   cost: "4500tg")
        
        let five = KitapModel(mainImage: UIImage(named: "tonk_is_pof")!,
                                   kitapName: "Тонкое исскусство пофигизма",
                                   smallDescription: "Original Japanese",
                                   cost: "2900tg")
        let six = KitapModel(mainImage: UIImage(named: "kod_da_vinch")!,
                                    kitapName: "Код да Винчи",
                                    smallDescription: "Original Japanese",
                                    cost: "3800tg")
        let seven = KitapModel(mainImage: UIImage(named: "aspid")!,
                                   kitapName: "Аспид",
                                   smallDescription: "Original Japanese",
                                   cost: "4000tg")
        
        let eight = KitapModel(mainImage: UIImage(named: "sherlok")!,
                                   kitapName: "Шерлок",
                                   smallDescription: "Original Japanese",
                                   cost: "5000tg")
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
}



