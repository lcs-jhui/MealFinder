//
//  MealFinderApp.swift
//  MealFinder
//
//  Created by Justin Hui on 20/4/2023.
//
import Blackbird
import SwiftUI

@main
struct MealFinderApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                
                SearchView()
                    .tabItem{
                        Image(systemName: "fork.knife")
                        Text("Meals")
                    }
                
                SavedView()
                    .tabItem{
                        Image(systemName: "list.star")
                        Text("Saved")
                    }
                
            }
            .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
