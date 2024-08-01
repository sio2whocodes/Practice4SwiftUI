#  Image Basics

### modifiers
- resizable() : 추가 안하면 이미지 원본 크기대로 들어감. resizable(): 코드로 사이즈를 조정할 수 있다.
- ignoreSafeArea() : 말그대로 위아래 safeArea 무시하고 백그라운드로 이미지 채움
- aspectRatio(): 원본 비율 유지, [parameter] contentMode: fill = 가용 범위를 모두 채움(이미지가 잘리더라도), fit = 이미지가 잘리지 않는 선에서 공간을 채움 비율유지하면서
- clipShape(): 이미지를 특정 모양 틀 안에 표현하고 싶을 때 [parameter] shapes ex. circle, roundedRactangle
- padding, shadow, opacity, etc.

### SFSymbol as image
