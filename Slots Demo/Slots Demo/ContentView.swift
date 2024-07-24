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
    @State private var win = false
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
                    .animation(.none)
                    .background(win ? Color.green.opacity(0.5) : Color.white.opacity(0.5))
                    .cornerRadius(20)
                    .scaleEffect(win ? 1.1 : 1.0)
                    .animation(.spring(Spring(response: 0.7, dampingRatio: 0.3)))
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
                HStack(spacing: 20.0) {
                    VStack {
                        Button {
                            processResults(false)
                        } label: {
                            Text("Spin")
                                .bold()
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.horizontal, 30)
                                .background(Color.pink)
                                .cornerRadius(10)
                        }
                        Text("5 credits").font(.footnote)
                    }

                    // PLUS button
                    VStack {
                        Button {
                            processResults(true)
                        } label: {
                            Text("Max Spin")
                                .bold()
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.horizontal, 30)
                                .background(Color.pink)
                                .cornerRadius(10)
                        }
                        Text("25 credits").font(.footnote)
                    }
                }
                Spacer()
            }
        }
    }
    
    func processResults(_ isMax:Bool = false) {
        
        // Background Color Initiate
        backgrounds = backgrounds.map { _ in Color.white }
        
        if isMax {
            // Spin all the cards
            number = number.map { _ in
                Int.random(in: 0..<symbols.count)
            }
        } else {
            // Spin the middle row
            // Change the images
            number = number.enumerated().map {
                // new range checking operator
                if 3...5 ~= $0.0 {
                    return Int.random(in: 0..<symbols.count)
                } else {
                    return $0.1
                }
            }
        }
        // Check winnings
        processWin(isMax)
    }
    
    func processWin(_ isMax:Bool = false) {
        // Check winnings
        
        var matches = 0
        
        if !isMax {
            // Processing for single spin
            
            // middle row
            if isMatch(3,4,5) { matches += 1 }
            
        } else {
            // Processing for max spin
            
            // top row
            if isMatch(0,1,2) { matches += 1 }
            
            // middle row
            if isMatch(3,4,5) { matches += 1 }
            
            // bottom row
            if isMatch(6,7,8) { matches += 1 }
            
            // diagonal top left to bottom right
            if isMatch(0,4,8) { matches += 1 }
            
            // diagonal top right to bottom left
            if isMatch(2,4,6) { matches += 1 }
        }
        
        win = false
        
        //Check matches and distributes credits
        if matches > 0 {
            // at least one win
            credits += (matches * betAmount * 2)
            win = true
        } else if !isMax {
            // 0 wins, single spin
            credits -= betAmount
        } else {
            // 0 wins, max spin
            credits -= betAmount * 5
        }
        
    }
    
    func isMatch(_ index1:Int, _ index2:Int, _ index3:Int) -> Bool {
        if number[index1] == number[index2] && number[index2] == number[index3] {
            
            // Update backgrounds to green
            backgrounds[index1] = Color.green
            backgrounds[index2] = Color.green
            backgrounds[index3] = Color.green
            
            return true
        }
        return false
    }
}


#Preview {
    ContentView()
}
