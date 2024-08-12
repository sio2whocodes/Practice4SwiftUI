//
//  GroupBoxDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/12/24.
//

import SwiftUI

struct GroupBoxDemo: View {
    var body: some View {
        GroupBox(label: 
                    HStack{
                        Label("Noise cancelling mode", systemImage: "headphones.circle.fill")
                        Spacer()
                        Button {
                            //TODO
                        } label: {
                            Text("more")
                            Image(systemName: "chevron.right")
                        }
                        .font(.footnote)
                        .tint(.gray)
        }){
            Toggle("Study Mode", isOn: .constant(true))
            Toggle("Work Mode", isOn: .constant(false))
            HStack{
                Text("You're in your 'study mode'.")
                Spacer()
                Image(systemName: "book")
            }
            .foregroundStyle(.gray)
            .font(.caption2)
            .padding(EdgeInsets(top: 5,leading: 0,bottom: 0,trailing: 0))
        }
        .padding()
    }
}

#Preview {
    GroupBoxDemo()
}
