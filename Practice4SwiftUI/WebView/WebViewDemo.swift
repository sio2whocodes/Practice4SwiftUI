//
//  WebViewDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/13/24.
//

import SwiftUI

struct WebViewDemo: View {
    var body: some View {
        TabView {
            WebView(url: URL(string: "https://github.com/sio2whocodes/Practice4SwiftUI"))
                .ignoresSafeArea()
                .tabItem { 
                    Image(systemName: "laptopcomputer")
                    Text("Github")
                }
        }
        
    }
}

#Preview {
    WebViewDemo()
}
