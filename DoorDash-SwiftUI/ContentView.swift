//
//  ContentView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-23.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1,2,3,4,5,6]
    var items : Int = 10
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
                .cornerRadius(10)
            
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


