#  Stepper

```swift
     Stepper(titleKey: String, value: Binding<Strideable>, in: ClosedRange<Strideable>, step: _)
     Stepper(title:StringProtocol, onIncrement: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>, onDecrement: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
```

Stepper는 +,- 버튼과 타이틀을 제공해서 유저가 쉽게 값을 늘리고 줄일 수 있게 하는 뷰다.

parameter가 굉장히 다양한데 사용한건 첫번째꺼 title에 스트링 넣고 value에 stepper를 이용해서 늘리고 줄일 '값'을 저장하고 있는 바인딩 변수를 넣고, in은 없어도 되지만 그러면 값이 양극으로 무한대(는 아니겠지만)로 갈 수 있기 떄문에 범위를 지정해 줍니다 0...1 이런식으로, 그리고 step도 없어도 되지만 기본값은 1인 것 같고 한칸 단위를 뭐로 할지 넣어주면 됩니다.

이번 코드에서는 괜히 value를 크게 띄우고 다 중앙 정렬하고 싶어서 labelhidden이라는 modifier를 써줬답니다
그러면 라벨 없이 -,+ 뷰만 남아요. 끝!

그리고 다른 파라미터들 보면 onIncrement, onDecrement에 코드블럭을 넣을 수 있는걸 보니 오르고 있을때과 내리고 있을 때 무언가를 실행할 수 있게도 하나봅니다 다음에 기회가 되면 해볼게요


