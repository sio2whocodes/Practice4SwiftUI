//
//  StateProperties.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 2024/07/04.
//

import SwiftUI

struct StateProperties: View {
    
    @State private var isHearted = false
    @State private var numHearts = 999
    
    var body: some View {
        VStack{
            Image("반죽겸딩")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            HStack {
                Button {
                    self.isHearted.toggle() // button을 누를때마다 ishearted 변수가 toggle됨 (true and false)
                    if self.isHearted {
                        self.numHearts += 1
                    } else {
                        self.numHearts -= 1
                    }
                } label: {
                    if isHearted {
                        Image(systemName: "heart.fill")
                    } else {
                        Image(systemName: "heart")
                    }
                }
                Text("\(numHearts)")
            }
            
            // challenge 구간
            if self.isHearted {
                Text("Hello, Dough!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading], 20.0)
                    .padding(.bottom, 10.0)
                    .font(.largeTitle)
                    .shadow(color: Color.brown, radius: 0.1, x:2, y:2)
            } else {
                Text("Hello..Dough...")
                    .fontWeight(.thin)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading], 20.0)
                    .padding(.bottom, 10.0)
                    .font(.body)
                    .shadow(color: Color.gray, radius: 0.1, x:1, y:1)
            }
            
            Spacer()
        }    }
}

struct StateProperties_Previews: PreviewProvider {
    static var previews: some View {
        StateProperties()
    }
}
