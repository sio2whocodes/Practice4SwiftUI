//
//  ContentView.swift
//  Practice4SwiftUI
//
//  Created by sujeong on 2024/07/01.
//

import SwiftUI

struct ContentView: View {
    
    // some View : View의 subclass인 무엇이든 반환할 수 있다는 의미
    // command 누르고 프리뷰에서 element 클릭하면 빠른동작(?) 뜸
    var body: some View {
        // body는 single View 객체를 return하기 때문에 이 안에 병렬로 여러가지 view element를 넣으면 가장 상위의 것만 보여짐 -> 여러개의 element를 사용하고 싶으면 layout container로 감싸줘야함
        VStack{
            HStack(alignment: .center, spacing: 10.0) {
                Spacer() // 한 container안에 있는 spacer들은 내부 공간을 공유함 -> 양쪽에 두개 넣게 되면 절반씩 차지하게 됨
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Button {
                    // TODO
                } label: {
                    Image("반죽겸딩")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                }
                Spacer()
            }.padding()
            
            ZStack {
                Text("Very back")
                Text("Middle")
                Text("Front")
            }
            Spacer() //이 경우 상위의 element를 제외하고 바깥 container의 남은 모든 공간을 차지함
        }
        
        
    }
}

// 프리뷰를 위한 코드라서 본 product에 영향을 주지 않음. (스크린 크기라던가, 보고 싶은 element 등 조정가능)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
