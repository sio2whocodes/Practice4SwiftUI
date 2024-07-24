//
//  CardView.swift
//  Slots Demo
//
//  Created by sujeong on 7/10/24.
//

import SwiftUI

// 이때 source of truth는 content view가 맞는 것 같다 -> 이유는 카드를 체크하는 로직이 content view에 있기 때문

struct CardView: View {
    @Binding var symbol:String
    @Binding var background:Color
    
    var body: some View {
        VStack {
            if symbol == "apple" {
                Image(symbol)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .transition(AnyTransition.slide)
            } else if symbol == "cherry" {
                Image(symbol)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .transition(AnyTransition.slide)
            } else if symbol == "star" {
                Image(symbol)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .transition(AnyTransition.move(edge: .bottom))
            }
            // 왜 || 로 if 문 하나에 몰아넣으면 슬라이드 안적용되지?
        }
        .background(background.opacity(0.5))
        .clipShape(.rect(cornerRadius: 20))
//        .animation(Animation.default, value: background)
        .animation(.default)
        // 위에 animation 함수 써도 적용 안됨
    }
}

#Preview {
    // preview에 보여줄 이미지는 이렇게 일회적으로 constant 값을 전달해서 보여줄 수 있음
    CardView(symbol: Binding.constant("apple"), background: Binding.constant(Color.green))
}
