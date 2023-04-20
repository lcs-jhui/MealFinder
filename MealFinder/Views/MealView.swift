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
    @State var currentMeal = exampleMeal
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                AsyncImage(url: URL(string: currentMeal.strMealThumb),scale: 2)
                    .scaledToFit()
                    .cornerRadius(15)
                
                Text(currentMeal.strMeal)
                    .font(.title)
                
                Spacer()
                
                HStack{
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Save For Later")
                    })
                    .buttonStyle(.borderedProminent)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Cook Now")
                    })
                    .buttonStyle(.borderedProminent)

                }
                
                Spacer()
                
            }
            .padding()
            
            .navigationTitle("Meal Finder")
        }
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
