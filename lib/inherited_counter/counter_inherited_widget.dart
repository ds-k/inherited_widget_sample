import 'package:flutter/material.dart';

class CounterInheritedWidget extends InheritedWidget {
  const CounterInheritedWidget({
    super.key,
    required this.counter,
    required this.incrementCounter,
    required super.child,
  });

  final int counter;
  final VoidCallback incrementCounter;

  static CounterInheritedWidget of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
    assert(result != null, 'CounterInheritedWidget를 찾을 수 없습니다');
    return result!;
  }

  @override
  bool updateShouldNotify(CounterInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}
