//
//  DisclosureDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/19/24.
//

import SwiftUI

struct DisclosureDemo: View {
    @State private var flIsOn: Bool = false
    @State private var tlIsOn: Bool = false
    @State private var dlIsOn: Bool = false
    @State private var hueLevel: Float = 0
    
    @State private var isExpanded = true
    
    var body: some View {
        Form {
            DisclosureGroup("Lamps Settings", isExpanded: $isExpanded) {
                VStack {
                    Toggle("Floor Lamps", isOn: $flIsOn)
                    Toggle("Table Lamps", isOn: $tlIsOn)
                    Toggle("Desk Lamps", isOn: $dlIsOn)
                    Slider(value: $hueLevel, in: 0...1, step: 0.1)
                }
            }
        }
    }
    
    
}

#Preview {
    DisclosureDemo()
}
