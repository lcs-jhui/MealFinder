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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
