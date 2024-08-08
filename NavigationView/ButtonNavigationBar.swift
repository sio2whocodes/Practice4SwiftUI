//
//  ButtonNavigationBar.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/8/24.
//

import SwiftUI

struct ButtonNavigationBar: View {
    var body: some View {
        
        NavigationStack {
            Text("Hello, World!")
                .navigationTitle("Navigation Title")
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // TODO
                        } label: {
                            Image(systemName: "heart")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Text("sleepless in _______________")
                    }
                    
                    ToolbarItem(placement: .bottomBar) {
                        Text("All right reserved")
                            .font(.footnote)
                    }
                })
        }
    }
}

#Preview {
    ButtonNavigationBar()
}
