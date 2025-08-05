//
//  SwiftDataExpensesSaveApp.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-05.
//

import SwiftUI
import SwiftData
@main
struct SwiftDataExpensesSaveApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:Expense.self)
    }
}
