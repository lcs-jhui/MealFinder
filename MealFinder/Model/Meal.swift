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
    let idMeal: String
}


let exampleMeal = Meal(strMeal: "Beef and Mustard Pie ", strMealThumb: "https://www.themealdb.com//images//media//meals//sytuqu1511553755.jpg", idMeal: "52874")
