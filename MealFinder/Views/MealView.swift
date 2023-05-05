//
//  MealView.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//

import SwiftUI

struct MealView: View {
    
    //MARK: Stored Properties
    
    //Current meal to dispaly
    var mealToShow: Meal
    @State var detailedMeal: DetailedMeal? = nil

    var body: some View {
        
        
        
        VStack{
            
            if let meal = detailedMeal {
                
                AsyncImage(url: URL(string: mealToShow.strMealThumb),scale: 2)
                    .scaledToFit()
                    .cornerRadius(15)
                
                Text(mealToShow.strMeal)
                    .font(.title)
                
                Spacer()
                
                HStack{
                    
                    Button(action: {
                        
                        
                        
                    }, label: {
                        Text("Save For Later")
                    })
                    .buttonStyle(.borderedProminent)
                    
                    
                    Link(destination: URL(string: meal.strSource)!, label: {
                        
                        Text("Cook Now")
                        
                        
                    })
                    .buttonStyle(.borderedProminent)
                    
                }
                
                Spacer()
                
            } else {
                
                ProgressView()
                
            }
            
        
            
        }
        .padding()
        .task {
            detailedMeal = await NetworkService.fetchSource(forMealID: mealToShow.idMeal)
        }
    }
    
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView(mealToShow: exampleMeal, detailedMeal: exampleDetailedMeal)
    }
}
