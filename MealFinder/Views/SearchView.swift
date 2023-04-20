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
    
    //Debugging if it succeeded or failed
    @State var taskDone: Bool = false
    var body: some View {
        
        NavigationView{
            
            //Show the list of meals that match the search term
            ZStack {
                if taskDone {
                    List(foundMeals, id: \.idMeal) { currentMeal in
                        
                        HStack{
                            
                            AsyncImage(url: URL(string: currentMeal.strMealThumb),scale: 2)
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipped()
                            
                            Text(currentMeal.strMeal)
                                .bold()
                            
                        }
                        
                    }
                } else {
                    ProgressView()
                }
            }
            .searchable(text: $searchText)
            .task{
                //when the view appears, fetch search results for beef
                foundMeals = await NetworkService.fetch(resultsFor: "chicken")
                taskDone.toggle()
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        
        SearchView()
    }
}
