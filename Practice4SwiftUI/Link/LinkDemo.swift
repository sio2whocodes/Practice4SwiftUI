//
//  LinkDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/19/24.
//

import SwiftUI

struct LinkDemo: View {
    var body: some View {
        VStack {
            Link("Apple Store", destination: URL(string:"https://www.apple.com/kr/store")!)
            
            Link("Settings", destination: URL(string:"app-settings:")!)
                .padding()
            
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Label("Apple Website", systemImage: "apple.logo")
                    .frame(width: 250, height: 40)
                    .background(.black)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}

#Preview {
    LinkDemo()
}
