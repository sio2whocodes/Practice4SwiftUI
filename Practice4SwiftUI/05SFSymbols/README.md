#  SF symbols

SF symbols이란, apple에서 제공하는 icon들

장점은 font와 똑같이 크기조절, 굵기조절, 컬러조절이 다 된다. 즉 개발자가 일일히 아이콘 커스터마이징을 덜해도 됨!
그리고 svg로 추출할 수도 있어서 변형하고 싶다면 피그마나 어도비 일러스트에서 변형해서 쓰는 것도 가능
단, 애플이 지정해둔 몇가지 심볼은 변형해서 사용하는 것이 금지되고 제공하는 대로 써야함 (리스트는 사이트에 있다는데 못찾음)
그리고 SFSymbol은 app icon이나 로고 같은 것에 쓰면 안되고 앱 내에서만 써야함

사용방법은 아주 간단하게 ``Image(systemName:"SFSymbol이름")``이렇게 쓰면 된다.

SF symbol은 지금까지 UIKit쓰면서도 icon쓸 때 종종 사용해왔는데, 브라우징 앱이 있는건 처음 알았다..맨날 수수께끼하듯이 이름 유추해서 검색하면서 썼는데 ㅋㅋㅋ 

[https://developer.apple.com/sf-symbols/](https://developer.apple.com/sf-symbols/) 이 링크에서 다운받을 수 있고 mac os app이다. 영상에서는 웹사이트를 하나 알려줬는데 지금은 다른 사이트가 뜨는걸 보니 운영을 중단한 것 같다

[https://www.avanderlee.com/swift/sf-symbols-guide/](https://www.avanderlee.com/swift/sf-symbols-guide/) 그리고 유용한 블로그라고 소개해준 포스트.
분명히 handy하다고 하지 않았나..블로그 굉장히 긴데요? 이 블로그에는 실제로 어떻게 사용하는지 코드도 포함되어 있어서 코딩하다가 막힐 때 보면 좋을 것 같습니다!

오늘의 한마디 요약은 "Apple basically gave us free symbols to use in our app" (출처는 위에 블로그)
SF symbol은 이제 6.0버전이 베타출시가 된 상태다. 영상에선 15,000개의 심볼이었는데 지금은 6,000개의 심볼을 제공한다. 우와 이제 아이콘에 애니메이션도 되네, 컴포넌트를 추가하고 지우는 replacement도 지원하는 것 같고, 애니메이션이나 컴포넌트에 대한 설정을 커스텀하는 것도 고도화된 것 같다. 800개의 새로운 심볼이 추가됐다고 합니다~ new localized symbol에 Korean도 있네요 굿

그나저나 SF가 San Francisco인거 오늘 알았네..ㅋㅋ scientific fiction아니냐며 막이래
