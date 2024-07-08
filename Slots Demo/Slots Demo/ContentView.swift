 //
//  ContentView.swift
//  Slots Demo
//
//  Created by sujeong on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    private var symbols = ["apple", "cherry", "star"]
    @State private var number = [0, 0, 0]
    @State private var credits = 1000
    private var betAmount = 5
    
    var body: some View {
        ZStack {
            //Background
            Rectangle().foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .ignoresSafeArea(edges:.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .ignoresSafeArea(edges:.all)
            
            VStack {
                Spacer()

                // Title
                HStack {
                    Image(systemName: "moon.stars.circle.fill").foregroundColor(.yellow)
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "moon.stars.circle.fill").foregroundColor(.yellow)
                }.scaleEffect(2)
                Spacer()

                // Credits counter
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                Spacer()

                // Cards
                HStack {
                    Spacer()
                    Image(symbols[number[0]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .clipShape(.rect(cornerRadius: 20))
                    
                    Image(symbols[number[1]])
                       .resizable()
                       .aspectRatio(1, contentMode: .fit)
                       .background(Color.white.opacity(0.5))
                       .clipShape(.rect(cornerRadius: 20))
                    
                    Image(symbols[number[2]])
                       .resizable()
                       .aspectRatio(1, contentMode: .fit)
                       .background(Color.white.opacity(0.5))
                       .clipShape(.rect(cornerRadius: 20))
                    Spacer()
                }
                Spacer()

                // Button
                Button {
                    // Change the images
                    number[0] = Int.random(in: 0..<symbols.count)
                    number[1] = Int.random(in: 0..<symbols.count)
                    number[2] = Int.random(in: 0..<symbols.count)
                    // Check winnings
                    if number[0] == number[1] && number[1] == number[2] {
                        // Won
                        credits += betAmount * 10
                    } else {
                        credits -= betAmount
                    }
                    
                } label: {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.horizontal, 30)
                        .background(Color.pink)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
