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
    @State var mealToShow: Meal
    @State var detailedMeal: DetailedMeal
    
    var body: some View {
        
            
            VStack{
                
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
                    
                    
                    Link(destination: URL(string: detailedMeal.strSource)!, label: {
                        
                        Text("Cook Now")
                        

                    })
                    .buttonStyle(.borderedProminent)

                }
                
                Spacer()
                
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
