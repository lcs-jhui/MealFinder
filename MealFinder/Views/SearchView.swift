//
//  SearchView.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import SwiftUI

struct SearchView: View {
    
    //MARK: Stored Properties
    
    //Holds the list of meals returned by our search
    @State var foundMeals: [Meal] = []
    
    var body: some View {
        
        //Show the list of meals that match the search term
        List(foundMeals, id: \.idMeal) { currentMeal in
            
            VStack {
                Text(currentMeal.strMeal)
                    .bold()
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
