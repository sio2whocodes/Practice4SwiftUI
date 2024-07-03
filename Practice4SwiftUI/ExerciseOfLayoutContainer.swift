//
//  ExerciseOfLayoutContainer.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 2024/07/02.
//

import SwiftUI

struct ExerciseOfLayoutContainer: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("레모니").resizable().aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ExerciseOfLayoutContainer_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseOfLayoutContainer()
    }
}
