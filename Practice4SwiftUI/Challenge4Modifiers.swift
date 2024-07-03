//
//  Challenge4Modifiers.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 2024/07/03.
//

import SwiftUI

struct Challenge4Modifiers: View {
    var body: some View {
        ZStack{
            Image("Breakfast")
            VStack{
                Image("TopGradient")
                Spacer()
                Image("BottomGradient")
            }
            VStack{
                HStack{
                    Text("Hardcore\nAvo Toast")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image("Heart_health")
                }.padding(30)
                Spacer()
                Text("Energize with this healthy and hearty breakfast")
                    .foregroundColor(.white)
            }.padding(.vertical, 60.0)
            
        }
    }
}

struct Challenge4Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Challenge4Modifiers()
    }
}
