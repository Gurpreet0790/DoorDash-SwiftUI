//
//  OrderView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    var body: some View {
        
        ZStack(alignment: .top){

            ScrollView(showsIndicators: false) {
                ForEach(1...10, id: \.self){
                    item in
                    OrderRowView(item: item)
                        .padding(.bottom,5)
                        .padding([.leading,.trailing], 20)
                        .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.top,95)
            HStack{
                
                Text("Order Pizza")
                    .font(.custom("PlayfairDisplay-Bold", size: 20))
                    .padding(.leading,10)
                    .frame(height: 60)
                Spacer()
                Label{
                    Text(19.90, format: .currency(code: "USD"))
                        .font(.custom("PlayfairDisplay-Bold", size: 20))
                        .padding(.trailing,20)
                }
            icon:{
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            }
            .padding()
            .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 10))
            
            
      
        }
        .background(LinearGradient(colors: [Color("Background"),Color("DarkPink"),Color("LightPink")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    OrderView(orders: [1])
}
