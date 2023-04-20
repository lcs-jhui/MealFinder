//
//  Meal.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import Foundation

struct Meal: Codable{
    let strMeal: String
    let strMealThumb: String
    let idMeal: Int
}

let exampleMeal = Meal(strMeal: "Fettuccine Alfredo", strMealThumb: "Fettuccine", idMeal: "123")
