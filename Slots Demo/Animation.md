#  Animation

## Takeaways
- 'animation': 값이 있는 모든 변수, 뷰에 적용할 수 있음. (값에 변화를 주는 것 = 애니메이션 효과). modifier를 뷰에 추가할 경우, child view에 모두 적용됨
- 'transition': 뷰가 화면에 어떻게 추가되고 어떻게 사라질 것 인지 설정할 수 있음 but, 언제 추가될 것인지에 대한 조건문이 뷰를 감싸고 있어야함, parent뷰? 혹은 본인 뷰에 animation이 있어야함(이건 왜지)
- 'spring': 뷰에 바운스 효과를 주는 애니메이션, response parameter(애니메이션 주기, Duration), damping fraction parameter(스프링의 저항값이라고 생각하면 됨 0~1, 0에 가까울 수록 더 많이 바운스함)
    * animation modifier을 추가하면 추가된 부분 이전까지의 부분이 모두 영향을 받음 (spring modifier도 마찬가지 ex. label 값도 막 같이 바운스함 환장햐) 이걸 막기 위해서는 영향을 주고 싶지 않은 부분 뒤에 .animation(.none) 을 추가해주면 됨

- animation(.default) -> deprecated.. 업뎃 버전으로 새로 익혀야 함 but it still works
