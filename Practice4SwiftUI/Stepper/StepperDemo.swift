//
//  StepperDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/19/24.
//

import SwiftUI

struct StepperDemo: View {
    
    @State private var score: Int = 100
    
    var body: some View {
        VStack {
            Label("Today's achivement score", systemImage: "logo")
                .bold()
            Label("\(score)", systemImage: "logo")
                .font(.largeTitle)
                .bold()
            Stepper("", value: $score, in: 0...100, step: 5)
                .labelsHidden()
        }
    }
}

#Preview {
    StepperDemo()
}
