//
//  HomeView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack{
            CategoriesView()
            PopularItems()
            FoodListView()
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}

struct CategoriesView: View {
    var categories: [String] = ["Burger","Pizza","Donut","Mexican","Donut","Mexican"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(categories, id:\.self){
                    item in
                    VStack{
                        Image("burgerHome")
                            .resizable()
                            .scaledToFit()
                            .background(Color("LightPink"), in: Circle())
                            .padding(5)
                        
                        Spacer()
                        
                        Text("\(item)")
                            .multilineTextAlignment(.center)
                            .padding(.bottom,20)
                            .foregroundStyle(.white)
                            .font(.custom("PlayfairDisplay-Bold", size: 15))
                    }
                    .background(Color("Background"), in: Capsule())
                    .padding(.bottom,10)
                    .frame(height: 150)
                    
                }
            }
            //        .background(.linearGradient(colors: [Color("LightPink"), .white], startPoint: .topLeading, endPoint: .bottomLeading))
            .padding()
        }
    }
}

struct PopularItems: View {
    var body: some View {
        VStack(alignment: .leading){
            Label{
                Text("Popular Items")
                    .font(.custom("PlayfairDisplay-Bold", size: 25))
            }
        icon:{
            Image(systemName: "face.smiling.inverse")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(.systemYellow))
                .frame(width:40, height:40)
        }
            
            HStack{
                Text("182 Items total")
                    .font(.custom("PlayfairDisplay-Bold", size: 15))
                    .foregroundColor(.gray)
                    .padding(.leading,10)
                
                Spacer()
                
                NavigationLink {
                    ContentView()
                } label: {
                    Text("View All")
                        .foregroundColor(.blue)
                        .underline()
                        .font(.custom("PlayfairDisplay-Bold", size: 15))
                }
            }
        } .padding()
        
    }
}

struct FoodListView: View {
    var body: some View {
        
        
        ScrollView {
            VStack{
                ForEach(1...10, id: \.self){
                    item in
                    FoodItemView()
                }
                .padding()
                .background(Color("LightPink"), in: RoundedRectangle(cornerRadius: 20))
                
            }
        }
    }
    
    struct FoodItemView: View {
        var body: some View {
            
            Image("burgerHome")
                .resizable()
                .scaledToFit()
                .padding()
            Text("Indian Salad")
                .font(.custom("PlayfairDisplay-Bold", size: 20))
                .foregroundColor(Color(.black))
            Text("Hot & Spicy")
                .font(.custom("PlayfairDisplay-Bold", size: 15))
                .foregroundColor(Color(.gray))
            Text(19.80, format: .currency(code: "CAD"))
                .foregroundColor(Color("DarkPink"))
                .font(.custom("PlayfairDisplay-Bold", size: 20))
        }
    }
}
