//
//  Meal.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import Blackbird
import Foundation

struct Meal: Codable, BlackbirdModel{
    @BlackbirdColumn var strMeal: String
    @BlackbirdColumn var strMealThumb: String
    @BlackbirdColumn var idMeal: String
}


let exampleMeal = Meal(strMeal: "Beef and Mustard Pie ", strMealThumb: "https://www.themealdb.com//images//media//meals//sytuqu1511553755.jpg", idMeal: "52874")
