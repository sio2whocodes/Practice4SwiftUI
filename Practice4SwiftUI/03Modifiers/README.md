#  Modifiers

오늘은 스유 View element들의 modifier들에 대해서 배웠어요. 상당히 많습니다.
크리스가 다 외울 필요는 절대 없다그랬고 하면서 그때그때 add modifier에서 찾아서 쓰라 그랬어요.

modifier는 우리가 기존에 UIKit에서 element들에게 설정하는 속성 같은 것들을 말합니다.
스유에서 modifier를 추가하는 방법은 두가지가 있는데요. 1) xcode interface를 이용하여 visually 설정하는 방법, 2) by coding
1)은 오른쪽 Insight tap에서 적용하면 됩니다. 이해하기 쉽게 설정할 수 있고, 중요한건 여기서 추가하는 modifier들이 즉시 코드로 적용됩니다.
2)는 프로처럼 인터페이스 따위 사용하지 않고 내가 추가하고자 하는 뷰 엘리먼트에 .으로 시작하는 modifier들을 추가하는 방식입니다.
각 modifier들에 어떤 파라미터가 있는지 등은 찾아보면서 해야할 것 같습니다.

**Modifier들의 순서가 아주 중요합니다**
쉽게 말하면 앞에 위치한 Modifier들이 적용된 뷰 엘리먼트에 뒤에 Modifier를 하나씩 적용해간다고 생각하면 될 것 같습니다.
예를들어, padding과 cornerRadius의 경우 padding을 먼저 입력하면 padding이 들어간 상태의 뷰에 radius가 적용되기 때문에 둥글게 보이지 않을 수도 있습니다. (해보진 않았지만 radius를 엄청 크게 주면 padding너머로 보이긴 할 것 같습니다)

