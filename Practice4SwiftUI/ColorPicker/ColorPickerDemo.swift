//
//  ColorPicker.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/9/24.
//

import SwiftUI

struct ColorPickerDemo: View {
    
    @State var selectedColor = Color.orange
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 30)
                .padding(.bottom)
                .foregroundColor(selectedColor)
            
            ColorPicker("select your color >", selection: $selectedColor)
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ColorPickerDemo()
}
