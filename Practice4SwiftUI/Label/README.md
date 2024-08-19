#  Label

```swift

Label(titleKey: LocalizedStringKey, systemImage: String)
Label(titleKey: LocalizedStringKey, image: String)
Label(title: View, icon: View)

```
원래는 label을 텍스트 표시하는 용으로만 써왔어서 몰랐는데 이미지랑 세트로 붙일 수 있게 제공되고 있었음

Label은 이렇게 세가지가 있는데 첫번째꺼는 SFsymbol쓸 때, 두번째는 assets에 갖고 있는 이미지 쓸 때 쓰고, 마지막꺼는 둘 커스텀뷰를 만들어서 넣고 싶을 때 쓰면 될 것 같다.

Label로 뷰를 만들어서 tappable 한 button이나 link element에 커스텀 뷰로 넣어서 사용할 수 있다는게 크리스의 설명 (근데 왜 그냥 바로 버튼에 만들어서 쓰면 안되는건지..? 코드 복잡하니까? 혹은 reusable떄문? 아무래도 후자 일 것 같다. interactive element들은 action까지 같이 선언하니까 아무래도 모양이 똑같은 버튼을 여러개 두고 쓰고 싶다면 라벨로 만들어서 각 버튼에 라벨 추가해서 쓰는 게 나을듯!)

