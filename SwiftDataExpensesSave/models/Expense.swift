//
//  Expense.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-05.
//

import Foundation
import SwiftData

@Model
class Expense{
    var name: String
    var date : Date
    var amount : Double
    
    init(name: String, date: Date=Date.now, amount: Double) {
        self.name = name
        self.date = date
        self.amount = amount
    }
}
