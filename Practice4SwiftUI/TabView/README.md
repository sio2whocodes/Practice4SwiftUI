#  Tab View

오늘은 SwiftUI에서 TabView를 만드는 법을 배웠다.

생각보다 너무 간단해서 놀랐음 VStack 대신 TabView를 입력하고 그 안에 각 탭 아이템들을 채우면 탭뷰가 완성된다.

- .tabItem()
TabView내부에 속한 각 탭마다 tabItem modifier(이것도 modifier라고 부르나..?)를 추가하면 그 뷰가 탭 하나가 된다. 

tabItem안에는 label 즉 탭바에 표시되는 아이콘 뷰를 넣을 수 있는데 (넣어야 하는데) Vstack이 들어가는 건 아니고 Image랑 Text 각각 하나씩 넣으면 아이콘 + 캡션 식으로 표시된다. (UIKit쓸때 탭뷰 아이콘 표시 안되는거 때문에 애먹었는데 여기선 편했다.)

- .tag()
이때 tag는 없어도 작동하긴 하지만 어떤 탭을 선택할지 제어해야 할 때는 꼭 필요하다.   
tag에 들어가는 값을 string이든 int든 상관없이 value면 다 들어가고 혼용해도 상관없다 (ex. tab 1은 숫자, tab 2는 string이어도 됨.)
tag를 지정해뒀으면 어떤 탭이 선택되어있는지 코드로 접근할 수 있고, 또 제어할 수도 있다.

- TabView(selection:)
탭뷰가 실행될 때 선택될 탭을 지정해두고 싶으면 TabView에 파라미터 selection의 값으로 binding변수를 넘기면 된다. 이때 (state) binding변수에 가장 먼저 선택될 탭뷰의 tag값을 넣으면 됨.

**예시**

```swift
    TabView(selection: $selectedTab) {
        
        Text("Hello, World!")
            .tabItem {
                Image(systemName: "arrow.down.heart.fill")
                Text("start")
            }
            .tag("start")
            
        TextFieldDemo()
            .tabItem {
                Image(systemName: "arrowtriangle.right.square.fill")
                Text("enter")
            }
            .tag("login")
    }
```

예시에서 첫번째 탭뷰는 간단한 텍스트 뷰 하나지만, 실제로 탭뷰를 사용할 때는 하나의 탭안에 여러가지가 들어간 뷰 페이지 하나를 넣게 되기 때문에 두번째 탭뷰처럼 외부에 만들어둔 View 객체를 넣어서 쓰게 될 것 같다.
