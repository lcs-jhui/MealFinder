//
//  DetailedMeal.swift
//  MealFinder
//
//  Created by Justin Hui on 22/4/2023.
//

import Foundation

struct DetailedMeal: Codable {
    let idMeal: String
    let strSource: String
}

let exampleDetailedMeal = DetailedMeal(idMeal: "52874", strSource: "https://www.bbc.co.uk/food/recipes/beef_and_mustard_pie_58002")
