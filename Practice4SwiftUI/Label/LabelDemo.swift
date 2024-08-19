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
            Label(
                title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ },
                icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
            )
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
