#  Link

```swift
    Link(title: StringProtocol, destination: URL)
    Link(destination: URL(string: "https://www.apple.com")!, label: {
        Text("Link")
    })
```

Link는 클릭하면 destination URL로 이동하는 뷰 element임 (몰랐다면 버튼으로 시도해봤을 것 같은데 link가 앱 외부로 이동하려면 필요한 것 같다.)

두가지 방식으로 쓸 수 있는데, 첫번째 처럼 title(사용자가 볼 수 있는 뷰), destination(이동할 목적지 URL)
두번째는 title에 string을 넣는게 아니라 커스텀뷰를 추가할 수 있는 것 (이때 Label 튜토리얼에서 배운 Label을 써먹으면 될 것 같다.)

그나저나 "app-settings:" 같이 아이폰 기본 앱으로 이동할 수 있는 URL에 대해서 더 많이 알고 있으면 좋을 것 같았음 (이건 크리스도 잘 모르는듯)
