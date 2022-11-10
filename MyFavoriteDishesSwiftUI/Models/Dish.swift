//
//  Dish.swift
//  MyFavoriteDishesSwiftUI
//
//  Created by Lucia Rigoni Freire on 10/11/22.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isSweet: Bool
    let isSalty: Bool
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Brigadeiro", imageURL: "brigadeiro", isSweet: true, isSalty: false),
            Dish(name: "Lasanha", imageURL: "lasagna", isSweet: false, isSalty: true),
            Dish(name: "Bolo", imageURL: "bolo", isSweet: true, isSalty: false),
            Dish(name: "Hamburguer", imageURL: "hamburguer", isSweet: false, isSalty: true),
            Dish(name: "Bala", imageURL: "bala", isSweet: true, isSalty: false),
            Dish(name: "Batata", imageURL: "batata", isSweet: false, isSalty: true),
            Dish(name: "Sorvete", imageURL: "sorvete", isSweet: true, isSalty: false),
            Dish(name: "Pizza", imageURL: "pizza", isSweet: false, isSalty: true)
        ]
    }
}
