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
    let container: ModelContainer = {
        let schema=Schema([Expense.self])
        let container=try! ModelContainer(for:schema,configurations: [])
        return container
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container) //une autre facon de faire
        //.modelContainer(for:Expense.self) //la methode la plujs facile, on peut passer plusieurs modeles avec le array [model1.self,model2.self,...]
    }
}
