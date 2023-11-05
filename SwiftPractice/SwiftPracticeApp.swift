//
//  SwiftPracticeApp.swift
//  SwiftPractice
//
//  Created by Matthew Patrus on 2023-11-04.
//

import SwiftUI
import SwiftData

@main
struct SwiftPracticeApp: App {
    let container: ModelContainer = {
        let schema = Schema([Expense.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
//        .modelContainer(for: [Expense.self])
    }
}
