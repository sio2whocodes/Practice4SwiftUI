//
//  Modifiers.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 2024/07/03.
//

import SwiftUI

struct Modifiers: View {
    var body: some View {
        VStack{
            Image("반죽겸딩")
                .resizable()
                .cornerRadius(30) // 순서가 중요!
                .padding()
                .shadow(radius: 10)
            //padding을 먼저두면 padding이 들어간 상태에서 corner radius가 들어가게 됨 -> modifier들을 배치하는 순서대로 효과가 적용된다는 점 주의!
            
            Text("Hello, Dough!")
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .padding([.top, .leading], 20.0)
                .padding(.bottom, 10.0)
                .font(.largeTitle)
                .shadow(color: Color.brown, radius: 0.1, x:2, y:2)
            Spacer()
        }
    }
}

struct Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Modifiers()
    }
}
