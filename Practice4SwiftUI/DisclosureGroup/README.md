#  DisclosureGroup

```swift 
DisclosureGroup(label: StringProtocol, isExpanded: Binding<Bool>, content: View)
```

DisclosureGroup은 노션에서의 토글처럼 하위뷰를 숨길 수 있고 나타나게 할 수 있는 뷰 컨테이너?다.

- Label에는 그룹의 타이틀을 쓰면 되고 String을 그냥 써도 되고 커스텀뷰를 넣을 수도 있음
- isExpanded는 안써도 되지만 disclosuregroup이 열렸는지 닫혔는지 코드로 제어하고 싶다면 저기에 바인딩변수를 넣어주면 된다. true가 열린거, false가 닫힌거(당연함 isexpanded임)
- content는 disclosure group하위에 들어가는 뷰다 보통 vstack으로 만들어서 쓰게 될 것 같다.


