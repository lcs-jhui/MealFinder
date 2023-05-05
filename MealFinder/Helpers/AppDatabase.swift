//
//  AppDatabase.swift
//  BlackbirdTest
//
//  Created by Russell Gordon on 2023-03-30.
//

import Blackbird
import SwiftUI

struct AppDatabase {
    
    static var instance: Blackbird.Database = {

        // Attempt to copy the database to a location within the app's sandbox where it can be modified
        do {
            // We need to manipulate files inside the app's sandbox
            let fileManager = FileManager.default
            
            // We need the path to the database file
            let dbPath = try fileManager
                .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent("db.sqlite")
                .path
            print("Database may exist already at this location:")
            print(dbPath)
            
            // DEBUG: Ensure that database is copied again from app bundle
            print("Removing existing database... ", terminator: "")
            try fileManager.removeItem(atPath: dbPath)
            // Remove temporary files too
            try fileManager.removeItem(atPath: dbPath + "-shm")
            try fileManager.removeItem(atPath: dbPath + "-wal")
            print("removed.")
            
            // When no database currently exists at that path, copy one from the app bundle
            if !fileManager.fileExists(atPath: dbPath) {

                print("Database does not already exist. Instead, we are going to attempt to copy from the bundle resource path of:")
                let dbResourcePath = Bundle.main.path(forResource: "db", ofType: "sqlite")!
                print(dbResourcePath)

                try fileManager.copyItem(atPath: dbResourcePath, toPath: dbPath)
            } else {
                print("Database already existed at that location.")
            }
            
            // Now try to open the database at the path inside the application support directory (inside the app sandbox, so the database will be read-write)
            print("Attempting to open database file... ", terminator: "")
            let db = try Blackbird.Database(path: dbPath)
            print("opened successfully.")
            
            // Return the db instance
            return db
            
        } catch {
            
            // When the database cannot be opened, the app will deliberately crash.
            // This is reasonable behaviour because so long as we have placed the database in the Xcode
            // project, the code above should never fail.
            // If the code above did fail, it means we have forgotten something critical – the app cannot function
            // without the database, so it will not run at all.
            fatalError(error.localizedDescription)
        }

    }()
    
}
