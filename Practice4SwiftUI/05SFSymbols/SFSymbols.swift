//
//  SFSymbols.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 2024/07/05.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
        HStack {
            Image(systemName:"heart")
            Text("Like")
        }.font(.largeTitle)
    }
}

struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}
