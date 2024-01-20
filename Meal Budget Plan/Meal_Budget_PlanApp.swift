//
//  Meal_Budget_PlanApp.swift
//  Meal Budget Plan
//
//  Created by Oscar Navarro on 1/19/24.
//

import SwiftUI
import SwiftData

@main
struct Meal_Budget_PlanApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
