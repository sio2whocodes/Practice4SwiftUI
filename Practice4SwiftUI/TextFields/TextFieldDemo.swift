//
//  TextFieldDemo.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 8/6/24.
//

import SwiftUI

struct TextFieldDemo: View {
    
    @State private var firstnameInput = ""
    @State private var lastnameInput = ""
    @FocusState private var focus: FormFieldFocus?
    
    var body: some View {
        VStack{
            Text("Enter your name")
                .font(.largeTitle)
            Text("This is your first step in this app")
                .font(.footnote)
            Spacer()
            
            TextField("Fistname", text: $firstnameInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .autocorrectionDisabled()
                .onSubmit {
                    print("it's your firstname:\(firstnameInput)")
                    focus = .lastname
                }
                .focused($focus, equals: .firstname)
            TextField("Lastname", text: $lastnameInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .autocorrectionDisabled()
                .onSubmit {
                    print("it's your lastname:\(lastnameInput)")
                }
                .focused($focus, equals: .lastname)
            Spacer()
        }
        .onAppear{
            focus = .firstname
        }
    }
    
    enum FormFieldFocus {
        case firstname, lastname
    }
}

#Preview {
    TextFieldDemo()
}
