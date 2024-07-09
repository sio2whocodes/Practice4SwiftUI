//
//  SliderView.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 7/9/24.
//

import SwiftUI

struct SliderView: View {
    @Binding var value:Double
    var label:String
    
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...255, step: 1) 
            //Slider도 내부에서 binding으로 value를 받기 때문에 binding property로 넘겨야함 -> value가 아닌 $value 사용
            Text("\(label): \(Int(value))")
        }
    }
}

#Preview {
    SliderView(value: Binding.constant(0), label: "Red")
}
