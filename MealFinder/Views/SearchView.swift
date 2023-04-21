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
    
    //Holds the song name the user is searching for
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView{
            
            //Show the list of meals that match the search term
                    List(foundMeals, id: \.idMeal) { currentMeal in
                        
                        NavigationLink(destination: {
                            MealView(mealToShow: currentMeal)
                        }, label: {
                            HStack{
                                
                                RemoteImageView(urlOfImageToShow: currentMeal.strMealThumb,
                                                desiredWidth: 50)
                                
                                Text(currentMeal.strMeal)
                                    .bold()
                                
                            }
                        })
                    }
                    .navigationTitle("Meal Finder")
            .searchable(text: $searchText)
            .onChange(of: searchText) { newSearchText in
                
                Task{
                    //Fetch search results for whatever user searches for
                    foundMeals = await NetworkService.fetch(resultsFor: newSearchText)
                }
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        
        SearchView()
    }
}
