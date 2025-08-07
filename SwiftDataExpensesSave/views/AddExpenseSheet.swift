//
//  AddExpenseSheet.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-07.
//

import SwiftUI

struct AddExpenseSheet: View {
    @State private var name: String = ""
    @State private var date: Date = .now
    @State private var amount: Double = 0
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    var body: some View {
        NavigationStack {
            Form {
                TextField("Expense Name",text:$name)
                DatePicker("Date", selection: $date,displayedComponents: .date)
                TextField("Amount",value:$amount,format: .currency(code: "CAD")).keyboardType(.decimalPad)
                
            }
            .navigationTitle(Text("Add Expense"))
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement:.topBarTrailing) {
                    Button(action: { dismiss()}) {
                        Label("Cancel", systemImage: "")
                    }
                }
                ToolbarItemGroup(placement:.topBarTrailing) {
                    Button(action: { save()}) {
                        Label("Save", systemImage: "")
                    }
                }
                
            }
        }
       
    }
    func save() {
        let expense = Expense(name: name, date: date, amount: amount)
        context.insert(expense)
        try! context.save()
        self.name = ""
        self.date = .now
        self.amount = 0
        dismiss()
    }
}

//#Preview {
   // AddExpenseSheet()
//}
