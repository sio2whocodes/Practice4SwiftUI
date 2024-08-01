//
//  ImageDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/1/24.
//

import SwiftUI

struct ImageDemo: View {
    var body: some View {
    
        VStack{
            Image("반죽겸딩")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fit)
                .clipShape(.circle)
                .padding(30)
                .shadow(radius: 10)
            Button {
                // TODO
            } label: {
                Image(systemName: "arrow.down.heart.fill")
                Text("download this lovely image!")
            }
            .buttonStyle(.bordered)

        }
        
        
        
    }
}

#Preview {
    ImageDemo()
}
