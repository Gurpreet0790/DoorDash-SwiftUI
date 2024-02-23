//
//  MenuItemView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct MenuItemView: View {
   @State private var isItemsPresent : Bool = false
    var body: some View {
        VStack(){
            Image("0_lg")
                .cornerRadius(20)
            Text("Margherita Pizza")
                .font(.custom("PlayfairDisplay-Bold", size: 20))
            ScrollView {
                Text("""
                     Pizza always makes a bad day feel better, and there’s nothing nicer than a perfect slice of margherita pizza. Now you can make this recipe at home any time the craving strikes!
    """)
                .font(.custom("PlayfairDisplay-Regular", size: 15))
            }
            

                Button{
                   print("Press the button")
                    isItemsPresent = true
                } label: {
                    Spacer()
                    Text(12.99, format: .currency(code: "USD"))
                    Image(systemName: isItemsPresent ? "cart.fill.badge.plus" : "cart.badge.plus")
                    Spacer()
                    
                }
                .font(.custom("PlayfairDisplay-Bold", size: 20))
                .foregroundColor(.white)
                .padding()
                .background(Color("DarkPink"), in: .capsule)
                .padding(5)
            }
    }
}

#Preview {
    MenuItemView()
}
