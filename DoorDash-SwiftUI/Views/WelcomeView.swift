//
//  WelcomeView.swift
//  DoorDash-SwiftUI
//
//  Created by ReetDhillon on 2024-02-22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("WelcomeChef")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: UIScreen.main.bounds.size.height/3)
                    .background(Color("DarkPink"), in: RoundedRectangle(cornerRadius: 40))
                    .padding(.bottom,50)
            
                Spacer()
                
                Text("Order Your Delicious Food")
                    .font(.custom("PlayfairDisplay-Bold", size: 35))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .shadow(color: .gray, radius: 15, x: 10, y:10)
                
                Spacer()
                
                Text("Ask not what you can do for your country. \n Ask what's for lunch.")
                    .font(.custom("PlayfairDisplay-Bold", size: 15))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
               
                           NavigationLink {
                               // destination view to navigation to
                               HomeView()
                           } label: {
                               VStack {
                                   Image(systemName: "arrow.forward")
                               }
                               .padding(30)
                               .background(Color("DarkPink"), in: Circle())
                               .foregroundColor(.white)
                               .shadow(color: Color("DarkPink"),radius: 20, x:10,y:20)
                           }
                
//                Button{
//                    print("Go to Next Page")
//                    homeScreen()
//                } label: {
//                    Image(systemName: "arrow.forward")
//                }
//                .padding(30)
//                .background(Color("DarkPink"), in: Circle())
//                .foregroundColor(.white)
//                .shadow(color: Color("DarkPink"),radius: 20, x:10,y:20)
                
                Spacer()
                
                BottomView()
            }
        }
    }
}

#Preview {
    WelcomeView()
}

struct BottomView: View {
    var body: some View {
        HStack{
            Image("burgerHome")
                .resizable()
                .scaledToFill()
                .padding()
                .rotationEffect(.degrees(40))
            
            Spacer()
            
            Image("pizzaWelcome")
                .resizable()
                .scaledToFill()
                .padding()
            
            Spacer()
            
            Image("burgerHome")
                .resizable()
                .scaledToFill()
                .padding()
                .rotationEffect(.degrees(-25))
        }
        .frame(height: 150)
    }
}
