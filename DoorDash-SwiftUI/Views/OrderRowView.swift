//
//  OrderRowView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct OrderRowView: View {
    var item : Int
    var body: some View {
       
        VStack(alignment: .leading){
                Text("Order Item \(item)")
                .font(.custom("PlayfairDisplay-Regular", size: 15))
                HStack(){
                Text("\(item) @ $20.25")
                .font(.custom("PlayfairDisplay-Regular", size: 15))
                    Spacer()
                    Text(20.35, format: .currency(code: "USD"))
                    .font(.custom("PlayfairDisplay-Bold", size: 15))
            }
       
        }
    }
}

#Preview {
    OrderRowView(item: 1)
}

