//
//  DataFlowNViewConposition.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 7/9/24.
//

import SwiftUI

struct ColorPickerView: View {
    
    // State property를 갖고 있는 곳이 source of truth (데이터를 진짜로 갖고 있는 곳)
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            
            //state property를 binding property를 갖고 있는 곳으로 넘길때(연결시킬때) $ 사용
            SliderView(value: $red, label: "Red")
            SliderView(value: $green, label: "Green")
            SliderView(value: $blue, label: "Blue")
        }.padding()
    }
}

#Preview {
    ColorPickerView()
}
