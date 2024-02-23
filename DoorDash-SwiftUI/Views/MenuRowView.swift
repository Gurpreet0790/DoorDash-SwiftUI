//
//  MenuRowView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment: .top, spacing: 20){
            if let image = UIImage(named: "\(item)_sm"){
              Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
        
            VStack(alignment: .leading){
                Text("Margrettia Pizza")
                    .font(.custom("PlayfairDisplay-Regular", size: 15))
                RatingsView(rating: 4)
                Spacer()
            }
        }
    }
}

#Preview {
    MenuRowView(item: 1)
}
