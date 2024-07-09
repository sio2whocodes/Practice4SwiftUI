//
//  DataFlowNViewConposition.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 7/9/24.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            
            Slider(value: $red, in: 0...255, step: 1)
            Text("Red: \(Int(red))")
            
            Slider(value: $green, in: 0...255, step: 1)
            Text("Green: \(Int(green))")
            
            Slider(value: $blue, in: 0...255, step: 1)
            Text("Blue: \(Int(blue))")
        }.padding()
    }
}

#Preview {
    ColorPickerView()
}
