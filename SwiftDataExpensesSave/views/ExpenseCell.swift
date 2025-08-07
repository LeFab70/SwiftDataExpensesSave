//
//  ExpenseCell.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-07.
//

import SwiftUI

struct ExpenseCell: View {
    let expense: Expense
    var body: some View {
        HStack {
            Text(expense.date,format:.dateTime.month(.abbreviated).day()).frame(width: 70, alignment: .leading)
            Text(expense.name)
            Spacer()
            Text(expense.amount,format: .currency(code: "CAD")).foregroundColor(.secondary)
        }
    }
}

#Preview {
    ExpenseCell(expense:(Expense(name: "Expense", amount: 100)))
}
