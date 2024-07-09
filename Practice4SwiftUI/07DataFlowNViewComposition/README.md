#  Data Flow and View Composition

## Data Flow

``@State``, ``@Binding`` property에 대해서 배웠다.

``@Binding`` property는 ``@State`` property를 읽을 수도 있고 쓸 수(변경)도 있는 property인데
``@State`` property가 source of truth(데이터의 근원 느낌)이라면 ``@Binding``은 그 값을 다른 뷰나 서브 뷰에서 사용해야할 때 그쪽에서 ``@State`` property로 선언해서 사용하는 것

그래서 source of truth를 갖고 있는 뷰는 어떤 뷰인지 결정하는 것이 필요하다고 한다. (이건 다음 강의에서 다루는 것 같음?)

Binding property로 State property를 전달하려면 $표시 변수 앞에 사용한다.

그러면 이제 여러 뷰에서 value하나를 공유하게 되는 것
즉, state property가 subview에서 수정이 되어도 반영이 바로 되고, subview에서도 state property를 가져다 쓸 수 있고 그런식

## View Composition

view composition은 view reuse 를 위해 subview를 빼서 사용하는 건데

data flow랑 같이 배워서 상대적으로 단순해 보였다..
그냥 swiftUI 파일 하나 만들어서 호출해서 써주면됨..
음..할말은 view 안에 변수 선언해두고 초기화를 안하면 매개변수로 넘겨줘야 한다는거,
Padding 같이 subview에서는 설정 안하고 outer?view에서 설정해주는 거는 subview에서는 안보일수도 있지만 감내해야한다는거 (sub view에도 padding해주면 padding 두번 들어가나 -> 오 두번 들어가요;) 그래서 막 preview에만 padding해주고 그러던데
