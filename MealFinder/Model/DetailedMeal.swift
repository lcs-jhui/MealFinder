//
//  DetailedMeal.swift
//  MealFinder
//
//  Created by Justin Hui on 22/4/2023.
//

import Foundation

struct DetailedMeal: Codable {
    let idMeal: String
    let strMeal: String
    let strCategory: String
    let strArea: String
    let strMealThumb: String
    let strYoutube: String
    let strSource: String
}

let exampleDetailedMeal = DetailedMeal(idMeal: "52874", strMeal: "Beef and Mustard Pie", strCategory: "Beef", strArea: "British", strMealThumb: "https://www.themealdb.com//images//media//meals//sytuqu1511553755.jpg", strYoutube: "https://www.youtube.com/watch?v=nMyBC9staMU", strSource: "https://www.bbc.co.uk/food/recipes/beef_and_mustard_pie_58002")
