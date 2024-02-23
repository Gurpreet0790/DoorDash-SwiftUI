//
//  MenuView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct MenuView: View {

    var body: some View {
     


ScrollView(showsIndicators: false) {
ForEach(1...5, id: \.self){
    item in
    MenuRowView(item: item)
}
}


}


}

#Preview {
    MenuView()
}
