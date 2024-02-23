//
//  HeaderView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("surfBanner")
            Text("Pizza Factory App")
                .foregroundColor(.white)
                .font(.custom("PlayfairDisplay-Bold", size: 30))
        }
    }
}

#Preview {
    HeaderView()
}
