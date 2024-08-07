//
//  TabViewDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/7/24.
//

import SwiftUI

struct TabViewDemo: View {
    
    @State var selectedTab = "start"
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            Text("Hello, World!")
                .tabItem {
                    Image(systemName: "arrow.down.heart.fill")
                    Text("start")
                }
                .tag("start")
            
            
            ButtonBasics()
                .tabItem {
                    Image(systemName: "heart")
                    Text("home")
                }
                .tag(0)
            
            TextFieldDemo()
                .tabItem {
                    Image(systemName: "arrowtriangle.right.square.fill")
                    Text("enter")
                }
                .tag("login")
            
            ImageDemo()
                .tabItem {
                    Image(systemName: "arrowtriangle.down.square.fill")
                    Text("welcome")
                }
                .tag("welcome")

        }
    }
}

#Preview {
    TabViewDemo()
}
