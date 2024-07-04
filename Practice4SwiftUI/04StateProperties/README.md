#  State Properties

``@State``Property에 대해 배웠음
강의 마지막에 한마디 요약이 설명에 딱이다. "how you can have your user interface update automatically when the values change." 변수 값이 변할 때 자동으로 UI를 업데이트하려 할 때 쓰는 것.

``@State private var 변수명 = 값`` 이런식으로 선언해서 사용하는데 어떤 타입이든 될 수 있고, private을 쓴 이유는 이 뷰에서만 접근할 수 있게 하기 위함이라는데 아마 Binding을 설명하기 위한 빌드업인 것 같다. 다른 뷰에서도 쓸 수 있게 하는 어떤 것이 있다고 설명하는 걸 보니

이렇게 State property로 선언한 변수는 **그 값이 변할 때 마다 해당 값과 연관된 UI들도 자동으로 변하게 된다.**
UIKit에서는 변수의 값이 변할 때 이를 UI에 반영되게 하려면 label에 text를 넣거나 reload를 코드상에서 호출해줘야 했던 것 같은데 이런 점이 더 편해진 것 같다.

