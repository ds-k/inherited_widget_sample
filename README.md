# Flutter 상태관리 비교 예제

이 프로젝트는 Flutter의 두 가지 상태관리 방식인 InheritedWidget과 Riverpod을 비교하는 예제 애플리케이션입니다.

## 프로젝트 구조

```dart
lib/
├── inherited_counter/
│ ├── counter_inherited_widget.dart # InheritedWidget 구현
│ └── inherited_counter_page.dart # InheritedWidget 사용 페이지
├── riverpod_counter/
│ ├── counter_provider.dart # Riverpod Provider 구현
│ └── riverpod_counter_page.dart # Riverpod 사용 페이지
├── widgets/
│ ├── counter_button.dart # 카운터 버튼 위젯
│ └── counter_display.dart # 카운터 표시 위젯
└── main.dart # 앱 진입점
```

## 주요 기능

이 프로젝트는 동일한 카운터 기능을 두 가지 다른 상태관리 방식으로 구현하여 비교합니다:

1. **InheritedWidget 방식**

   - StatefulWidget과 InheritedWidget을 사용한 전통적인 Flutter 상태관리
   - Widget 트리를 통한 상태 전달
   - `setState()`를 사용한 상태 업데이트

2. **Riverpod 방식**
   - Riverpod 라이브러리를 사용한 현대적인 상태관리
   - Provider를 통한 상태 관리
   - 선언적이고 테스트 가능한 상태 관리
