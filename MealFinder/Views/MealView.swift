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
    
    var body: some View {
        
            
            VStack{
                
                AsyncImage(url: URL(string: mealToShow.strMealThumb),scale: 2)
                    .scaledToFit()
                    .cornerRadius(15)
                
                Text(mealToShow.strMeal)
                    .font(.title)
                
                Spacer()
                
                HStack{
                    
                    //Link(<#T##title: StringProtocol##StringProtocol#>, destination: <#T##URL#>)
                    
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
            
        }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView(mealToShow: exampleMeal)
    }
}
