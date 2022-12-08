# GetX 문서 정리
GetX <a> https://dev-yakuza.posstree.com/en/flutter/getx/route/#getuntil

### 1. Get.until
    - 조건이 충족될 때까지 스크린을 지운다.
    - __Navigation.popUntil()__ 과 기능이 동일하다.
    - Ex) Get.until((route) => Get.currentRoute == '/home').

### 2. Get.off
    - 현재 스크린을 지우고 새로운 스크린을 추가한다.
    - __Navigation.pushReplacement()__ 와 기능이 동일하다.
    - Ex) Get.off(Second())

### 3. Get.offNamed
    - `Named Route` 에 명시된 스크린까지 현재 스크린을 지우고 새로운 스크린을 추가한다.
    - __Navigation.pushReplacementNamed()__ 와 기능이 동일하다.
    - Ex) Get.offNamed('/Second')

### 4. Get.offUntil
    - 조건이 충족될 때까지 스크린을 지우고, 새로운 스크린을 추가한다.
    - __Navigation.pushAndRemoveUntil()__ 과 기능이 동일하다.
    - Ex) Get.offUntil(page, (route) => (route as GetPageRoute).routeName == '/home')
### 5. Get.offNamedUntil
    - `Named Route` 에 명시된 스크린에 다다르고, 조건이 충족될 때까지 스크린을 지우고 새로운 스크린을 추가한다.
    - __Navigation.pushNamedAndRemoveUntil()__ 과 기능이 동일하다.
    - Ex) Get.offNamedUntil(page, ModalRoute.withName('/home'))

### 6. Get.removeRoute
    - 조건이 충족될때까지 스크린을 지운다.
    - __Navigation.removeRoute()__ 와 기능이 동일하다.
    - Ex) Get.removeRoute(ModalRoute.withName('/home'))

### 7. Get.offAll
    - 모든 스크린을 지우고 새로운 스크린을 추가한다.
    - __Navigation.pushNamedAndRemoveUntil()__ 과 기능이 동일하다.
    - Ex) Get.offAll(Second())

### 8. Get.offAllNamed
    - 모든 스크린을 지우고 `Named Route` 에 명시된 스크린을 새롭게 추가한다.
    - __Navigation.pushNamedAndRemoveUntil()__ 과 기능이 동일하다.
    - Ex) Get.offAllNamed('/second')

## GetX Animation
---

### GetX 에서 사용가능한 애니메이션
- Transition.fade,
- Transition.fadeIn,
- Transition.rightToLeft,
- Transition.leftToRight,
- Transition.upToDown,
- Transition.downToUp,
- Transition.rightToLeftWithFade,
- Transition.leftToRightWithFade,
- Transition.zoom,
- Transition.topLevel,
- Transition.noTranstion,
- Transition.cupertino,
- Transition.cupertinoDialog,
- Transition.size,
- Transition.native

``` Dart
getPages:[
  GetPage(name:"/", page:() => Home()),
  GetPage(name:"/second", page:() => Second(), transition: Transition.leftToRight),
]
```

GetX 애니메이션을 더욱 상세하게 설정할 수 있다.
``` Dart
GetPage(
  name:"/second",
  page: () => SecondScreen(),
  transition: Transition.rightToLeft,
  transitionDuration: const Duration(milliseconds: 400),
  curve: Curves.fastOutSlowIn,
)
```

## Swipe Back
---
GetX 에서는 popGesture 를 사용해 스와이프로 뒤로 갈 수 있다.

``` Dart
GetPage(
  name: "/second",
  page: () => SecondScreen(),
  popGesture: true,
)
```

## 전 화면 확인하기
---
GetX 에서는 Get.previousRoute 를 사용해 전화면으로 돌아갈 수 있다.