#  Slots App

이번 강의는 간단한 겜블링 게임 앱을 만드는 거였음.  

지금까지 배운 layout container(Zstack, Hstack, Vstack), modifier, sfsymbols, UIelements, Button handling, state property 다 써서 만든 앱이었음

지금까지 앱 만들면서 여기서 그림을 그렸던 적은 거의 없었던 것 같아서 Rectangle 쓰는 것도 생소했다.

그리고 지금 업데이트 된 버전에서 바뀐 modifier들이 많아서 찾아가면서 해야할 것 같다. 그래도 다행히 애플이 도큐먼트를 너무 잘해둬서 어렵지 않게 고치면서 따라갈 수 있었음.

확실히 코드로 도형이나 투명도 조절에 좀 능숙해지면 UI 구현할 때 좀 더 편할 것 같다. 지금까지는 늘 이미지만들어서 추가하는 식으로 했는데 그러면 앱이 확실히 더 무거워질 것 같아서

어쨌든 재밌었음!

## Improving Slots App

우선 카드들을 sub view로 만들어서 재사용하는 식으로 코드를 개선함

이 과정에서 헷갈렸던 부분이 symbols 배열의 string 값을 전달하는 건데 배열을 @State로 선언하다보니 조금 헷갈렸음. 배열이 아니라 string값 하나를 binding property로 전달하는 거임!

그리고 이번에 반복적인 코드 map 고차함수 써서 리팩토릭하는 것도 했음. Map이 배열을 리턴해서 다시 담아줘야한다는 거 기억하기

그리고 swift ui 파일 내부에서 for문 쓰는거 안되는데..방법이 있겠죠?




