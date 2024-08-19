//
//  LabelDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/19/24.
//

import SwiftUI

struct LabelDemo: View {
    var body: some View {
        VStack {
            Label("Apple", systemImage: "apple.logo")
                .frame(width: 250, height: 40)
                .background(.black)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding()
    }
}

#Preview {
    LabelDemo()
}
