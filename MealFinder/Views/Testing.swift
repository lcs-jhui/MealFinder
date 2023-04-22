////
////  Testing.swift
////  MealFinder
////
////  Created by Justin Hui on 22/4/2023.
////
//
//import SwiftUI
//
//struct Testing: View {
//
//    @State var mealUrl: DetailedMeal?
//
//    var body: some View {
//
//        NavigationView{
//
//            if let mealUrl = mealUrl {
//
//                Text(mealUrl.strSource)
//
//            } else {
//                ProgressView()
//            }
//
//
//        }
//        .task {
//            mealUrl = await NetworkService.fetch()
//        }
//    }
//}
//
//struct Testing_Previews: PreviewProvider {
//    static var previews: some View {
//        Testing()
//    }
//}
