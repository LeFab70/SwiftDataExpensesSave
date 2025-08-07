//
//  ContentView.swift
//  SwiftDataExpensesSave
//
//  Created by Fabrice Kouonang on 2025-08-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ListExpenseView()
        }
        .ignoresSafeArea(.all)
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    ContentView()
}
