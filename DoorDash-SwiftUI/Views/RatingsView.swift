//
//  RatingsView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct RatingsView: View {
    var rating : Int
    var body: some View {
        HStack(){
        ForEach(1...6, id: \.self) {
            star in
            Image(systemName: star <= rating ?  "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 4)
}

