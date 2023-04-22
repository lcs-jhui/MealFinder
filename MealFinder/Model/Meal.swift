//
//  Meal.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import Blackbird
import Foundation

struct Meal: Identifiable, Codable, BlackbirdModel{
    let idMeal: String
    let strMeal: String
    let strMealThumb: String
}

//struct Meal: Identifiable, Codable, BlackbirdModel{
//    @BlackbirdColumn var idMeal: String
//    @BlackbirdColumn var strMeal: String
//    @BlackbirdColumn var strMealThumb: String
//}


let exampleMeal = Meal(idMeal: "52874", strMeal: "Beef and Mustard Pie ", strMealThumb: "https://www.themealdb.com//images//media//meals//sytuqu1511553755.jpg")
