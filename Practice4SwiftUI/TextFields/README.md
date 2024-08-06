#  Text Field

### Text field basics

```swift
    TextField(titleKey:, text: Binding<String>)
```
- titleKey: placeholder
- text: 텍스트 필드에 들어오는 입력을 저장할 바인딩 변수

**예시**
```swift
    TextField("Fistname", text: $firstnameInput)
```
firstnameInput 이라는 @State 프로퍼티를 선언하여 사용.
이러면 변수 값이 바뀌는 대로 text field 뷰에도 반영되고, 반대로 텍스트 필드의 텍스트 값이 바뀌어도 변수에 반영된다.

- .onSubmit() modifier
이건 텍스트 필드에서 엔터를 눌렀을 때 즉 제출됐을 때 실행되는 코드블럭을 넣을 수 있다.

**예시**
```swift
    TextField("Lastname", text: $lastnameInput)
        .onSubmit {
            print("it's your lastname:\(lastnameInput)")
        }
```

### Text field focus 제어 (싱글 텍스트필드 뷰)
텍스트 필드의 포커스가 활성화되어 있으면 커서가 보이고 키보드가 나타나는데 이를 .focused modifier로 제어할 수 있다.
focus를 제어하려면 focused에 파라미터로 condition을 넘겨야 하는데 FocusState<Value>.Binding 타입임
@FocusState 프로퍼티를 선언해줘야 하고, 텍스트 필드가 하나만 있는 싱글 뷰에서는 Bool로 선언하고 사용해도 문제없다.
.focused($condition) 이렇게 사용하고 해당 텍스트 필드를 활성화 하고 싶은 곳에서 condition값을 true로 바꿔주면 된다.

**예시**
뷰가 나타났을 때 바로 fistname을 입력하는 텍스트 필드가 활성화된다.

```swift
    @FocusState private var focus: Bool
    
    var body: some View {
        VStack{
            TextField("Fistname", text: $firstnameInput)
                .focused($focus)
        }
        .onAppear{
            focus = true
        }
```

### Text field focus 제어 (여러개 텍스트필드 뷰)
여러개의 텍스트 필드에 포커스를 이동시키고 싶은 경우
@FocusState 변수를 Bool 이 아닌 Enum으로 두고 사용할 수 있다.
이를 위해 어떤 텍스트 필드인지 구분하기 위한 Enum을 하나 선언한다.

body 바깥에 FormFieldFocus를 만들었다.
```swift
    enum FormFieldFocus {
        case firstname, lastname
    }
```

아까 focused에는 focus하나만 담았지만
.focused(_ binding:, equals:)가 있다.
binding에 변수를 담으면 그 값과 equals에 들어온 값이 같으면 focus된다.

따라서 binding에 FormFieldFocus인 focus변수를 담고, equals에 각각 텍스트 필드에 해당하는 enum값을 넣어주면
focus 변수에 해당 텍스트 필드 enum값이 담길 때 focus된다.

**예시**
```swift
    VStack{
        TextField("Fistname", text: $firstnameInput)
            .onSubmit {
                focus = .lastname
            }
            .focused($focus, equals: .firstname)
        TextField("Lastname", text: $lastnameInput)
            .focused($focus, equals: .lastname)
    }
    .onAppear{
        focus = .firstname
    }
```
