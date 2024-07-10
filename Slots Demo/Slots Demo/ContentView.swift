 //
//  ContentView.swift
//  Slots Demo
//
//  Created by sujeong on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var symbols = ["apple", "cherry", "star"]
    @State private var backgrounds = [Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white]
    @State private var number = [0, 0, 0, 0, 0, 0, 0, 0, 0]
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
                    // 여기서 symbols라는 배열을 전달하는게 아니라 'symbols[index]' string값을 전달하는거임 - card view는 배열이 아니라 string을 받는거임! (배열에 @State를 해놓고 받는건 String이라 헷갈리는듯)
                    CardView(symbol: $symbols[number[0]], background: $backgrounds[0])
                    CardView(symbol: $symbols[number[1]], background: $backgrounds[1])
                    CardView(symbol: $symbols[number[2]], background: $backgrounds[2])

                    Spacer()
                }
                HStack {
                    Spacer()
                    CardView(symbol: $symbols[number[3]], background: $backgrounds[3])
                    CardView(symbol: $symbols[number[4]], background: $backgrounds[4])
                    CardView(symbol: $symbols[number[5]], background: $backgrounds[5])
                    Spacer()
                }
                HStack {
                    Spacer()
                    CardView(symbol: $symbols[number[6]], background: $backgrounds[6])
                    CardView(symbol: $symbols[number[7]], background: $backgrounds[7])
                    CardView(symbol: $symbols[number[8]], background: $backgrounds[8])
                    Spacer()
                }
                
                Spacer()

                // First Button
                HStack {
                    Button {
                        // Background Color Initiate
                        backgrounds = backgrounds.map { _ in Color.white }
                        
                        // Change the images
                        number = number.map{ _ in
                            Int.random(in: 0..<symbols.count)
                        }
                        
                        // Check winnings
                        // middle row
                        if number[3] == number[4] && number[4] == number[5] {
                            
                            // Won
                            credits += betAmount * 10
                            
                            // Update backgrounds to green
                            backgrounds = backgrounds.map{ _ in Color.green }
                            
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
                    // PLUS button
                    Button {
                        // Background Color Initiate
                        backgrounds = backgrounds.map { _ in Color.white }
                        
                        // Change the images
                        number = number.map{ _ in
                            Int.random(in: 0..<symbols.count)
                        }
                        
                        // Check winnings
                        // middle row
                        if (number[0] == number[1] && number[1] == number[2]) && (number[3] == number[4] && number[4] == number[5]) && (number[6] == number[7] && number[7] == number[8]) && (number[0] == number[4] && number[4] == number[8]) && (number[2] == number[4] && number[4] == number[6]){
                            
                            // Won
                            credits += betAmount * 50
                            
                            // Update backgrounds to green
                            backgrounds = backgrounds.map{ _ in Color.green }
                            
                        } else {
                            credits -= betAmount * 5
                        }
                        
                    } label: {
                        Text("Spin PLUS")
                            .bold()
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.horizontal, 30)
                            .background(Color.pink)
                            .cornerRadius(10)
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
