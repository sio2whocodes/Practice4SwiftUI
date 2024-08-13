#  WebView

웹뷰 넣는게 생각보다 간단하네요.

찾아보니깐 UIKit에서도 단순히 웹뷰를 넣는 것 자체는 복잡하진 않은 것 같은데, 확실히 스유 코드 보다가 UIKit코드 보니깐 더 복잡해보이는 건 있는 듯 (벌써?)

WebView를 SwiftUI에서 사용하기 위해서 WebView라는 구조체를 만들고 'UIViewRepresentable' protocol을 따라줍니다.

UIViewRepresentable 프로토콜은 UIKit로 만든 뷰를 스위프트UI에서 사용하기 위해서 감싸주는 역할을 한다고 공식도큐먼트에 친절하게 설명되어 있네요.

[Protocol]
**UIViewRepresentable**
A wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.

프로토콜을 준수하기 위해 선언해야하는 함수는 두갠데요. 바로 이것입니다.

- makeUIView
    - makeUIView는 말그대로 뷰 객체를 만들어서 swiftUI 즉 호출하는 쪽으로 보내주는 함수이고, 예시 코드에서는 WKWebView를 반환하는 걸로 보이지만 UIView 자식들이면 다 됩니다. (원래 UIView였는데 지금 WebView넣을거라 바꾼거에요)

- updateUIView
    - updateUIView도 말그대로 뷰를 업데이트할 때 호출되는 함수입니다. 설명은 스위프트UI에서 새로운 값을 보냈을 때 그에 맞게 뷰를 업데이트 해주는 함수라고 합니다. URL이나 URL에 넘길 파라미터 값을 바뀔 때 쓸 수 있겠네요 나중에 한번 해보겠습니다.


**예시**
```swift
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        if let url = url {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
```

----
다시 WebView 얘기로 넘어와서, 위에 예시코드를 보면 알 수 있듯이 (사실 이게 전분데요..)

WKWebView() 가 애플이 제공하는 WebView 객체입니다. WK는 Web Kit 의 약자인데 따라서 WebKit을 import해주어야해요.

그러고 나서 webView를 로드하는 함수에 넘길 request를 정의하기 위해 url를 정의해줄건데요.

url은 swiftUI 즉 호출하는 쪽에서 넘길거라 WebView에 URL (옵셔널)멤버 변수(여기서도 멤버변수로 불렀었나..?)를 선언하고 사용했습니다.

URL이 옵셔널 타입이어서 if let 구문을 사용했구요, 이렇게 WebView struct를 마치고

스위프트UI 파일에서 body에서 WebView()를 이렇게 호출해주면 됩니다. 물론 제 코드에 경우 파라미터로 url을 넘겨야 합니다.

**예시**
```swift
    var body: some View {
        TabView {
            WebView(url: URL(string: "https://github.com/sio2whocodes/Practice4SwiftUI"))
                .ignoresSafeArea()
                .tabItem { 
                    Image(systemName: "laptopcomputer")
                    Text("Github")
                }
        }
        
    }
```

<img width="250" alt="image" src="https://github.com/user-attachments/assets/2329a212-eb5c-4765-9f54-c58dfc469ff1">


저는 심심해서 TabView안에 WebView를 넣어봤습니다. 실제로는 두줄정도 하는 코드겠네요.

앞으로 프로젝트하면서 자주 쓰일 WebView를 써봤습니다. 그럼 20000~
