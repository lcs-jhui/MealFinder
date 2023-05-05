//
//  SavedView.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import Blackbird
import SwiftUI

struct SavedView: View {

    //MARK: Stored Properties

    //The list of saved meals
    @BlackbirdLiveModels ({ db in
        try await Meal.read(from: db)
    }) var savedMeals

    //MARK: Computed Properties
    var body: some View {
        NavigationView{
            List(savedMeals.results) { currentMeal in
                VStack{
                    Text(currentMeal.strMeal)
                        .bold()
                }
            }
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
