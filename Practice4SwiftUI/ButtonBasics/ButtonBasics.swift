//
//  ButtonBasics.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 7/30/24.
//

import SwiftUI

struct ButtonBasics: View {
    var body: some View {
        VStack {
            
            // 1. Button(title:, action:) : 텍스트만 표시하는 버튼을 만들 때 사용
            
            Button("Hello", action: {
                // put codes executed when button clicked
                
            })
            .buttonStyle(.bordered)  //이거 왜 deprecated 된 것 처럼 뜨지
            
            // == but shorthand
            Button("Hello") {

            }
            .buttonStyle(.borderedProminent)
            .tint(.yellow)
            // 3. 버튼에 들어가는 폰트 설정
            .font(.headline)
            .foregroundColor(.black)
            
            Button("Hello") {

            }
            .buttonStyle(.borderless)
            
            Button("Hello") {

            }
            .buttonStyle(.plain)
            .font(.headline)
            
            Button("Hello") {

            }
            .buttonStyle(.automatic) // user's context에 따라서 바뀜 (ex, in ios > plain button style, in mac os > bordered button style)
            
            // 2. Button(action:, label:) : 버튼에 어떤 뷰를 넣을지 label에 설정할 수 있음
            
            Button(action: {
                // execute the action
            }, label: {
                Image("레모니")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
            })
            
            // another shorthand way
            Button {
                // Execute action
            } label: {
                // Label
                Image(systemName: "globe.asia.australia.fill")
                Text("Let's save the earth!")
                    
            }
            .buttonStyle(.bordered)
            .tint(.green)
            .bold()
            // 4. 버튼의 accessibility 정보 추가할 수 있음 ex. 이 버튼이 어떤 버튼인지 설명 추가 (Label), 버튼 클릭시 일어나는 일 (Hint) 등
            .accessibilityLabel("for saving the earth")
        }
        
        
        
    }
}

#Preview {
    ButtonBasics()
}
