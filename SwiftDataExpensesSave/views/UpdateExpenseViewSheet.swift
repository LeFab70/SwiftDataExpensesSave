//
//  UpdateExpenseViewSheet.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-07.
//

import SwiftUI

struct UpdateExpenseViewSheet: View {
    @Bindable var expense:Expense
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            Form {
                TextField("Expense Name",text:$expense.name)
                DatePicker("Date", selection: $expense.date,displayedComponents: .date)
                TextField("Amount",value:$expense.amount,format: .currency(code: "CAD")).keyboardType(.decimalPad)
                
            }
            .navigationTitle(Text("Update Expense"))
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement:.topBarTrailing) {
                    Button(action: { dismiss()}) {
                        Label("Done", systemImage: "")
                    }
                }
            }
        }
    }
}

//#Preview {
   // UpdateExpenseViewSheet()
//}
