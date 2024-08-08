#  NavigationView

## Navigation Bar

### Adding button to the navigation bar

네비게이션 바도 스유에서 써본적 없었는데 냅다 버튼을 네비게이션 바에 추가하는 법 배운 사람 됨

어쨌든 **예시**

```swift
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
```

Q. NavigationView를 만들기 위해서 NavigationStack을 쓰는 것 같은데 그러면 여기에 큰 뷰들을 추가하면 되는건가?


Q. 보통 bar item에서 button 누르면 페이지 이동하는 경우도 있는데 이건 어떻게 처리할지 궁금 stay tuned ~

