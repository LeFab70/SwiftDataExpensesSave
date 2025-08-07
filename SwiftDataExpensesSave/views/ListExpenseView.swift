//
//  ListExpenseView.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-07.
//

import SwiftUI
import SwiftData
struct ListExpenseView: View {
    //@Query(sort:\Expense.date) var expenses: [Expense]
    @Query(filter:#Predicate<Expense>{$0.amount>1000}, sort:\Expense.date)var expenses: [Expense]
    @State var showAddExpense: Bool = false
    @Environment(\.modelContext) private var context
    var body: some View {
        NavigationStack {
            List {
               ForEach(expenses) { expense in
                  NavigationLink(destination: UpdateExpenseViewSheet(expense: expense)) {
                       VStack(alignment: .leading){
                           ExpenseCell(expense: expense)
                      }
                   }
                }
               .onDelete{indexSet in
                for index in indexSet {
                    self.context.delete(expenses[index])
                   }
               }
            }
            .navigationTitle("Expenses")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $showAddExpense){
                AddExpenseSheet()
            }
            .toolbar{
                if !expenses.isEmpty {
                   Button("Add Expense", systemImage: "plus.circle.fill") {
                        showAddExpense = true
                    }
                    
                }
            }
            .overlay{
                if expenses.isEmpty {
                    ContentUnavailableView(label: {Label("No Expenses yet",systemImage:"list.bullet.rectangle.portrait")}, description: {
                        Text("Add your first expense.")
                    },actions: {Button("Add Expense",systemImage: "plus.circle.fill"){showAddExpense = true}})
                    .offset(y: -50)
                }
            }
        }
        
    }
}

#Preview {
    ListExpenseView()
}
