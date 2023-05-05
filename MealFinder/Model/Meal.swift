//
//  Meal.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import Blackbird
import Foundation

struct Meal: Identifiable, Codable, BlackbirdModel {
    static var primaryKey: [BlackbirdColumnKeyPath] = [\.$idMeal]
    @BlackbirdColumn var idMeal: String
    @BlackbirdColumn var strMeal: String
    @BlackbirdColumn var strMealThumb: String
}
//
//struct SavedMeal: Identifiable, BlackbirdModel {
//    @BlackbirdColumn var id: Int
//    @BlackbirdColumn var strMeal: String
//    @BlackbirdColumn var strMealThumb: String
//    @BlackbirdColumn var idMeal: String
//}


let exampleMeal = Meal(idMeal: "52874", strMeal: "Beef and Mustard Pie ", strMealThumb: "https://www.themealdb.com//images//media//meals//sytuqu1511553755.jpg")

