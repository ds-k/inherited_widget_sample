import 'package:flutter/material.dart';
import 'counter_inherited_widget.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_button.dart';

class InheritedCounterPage extends StatefulWidget {
  const InheritedCounterPage({super.key});

  @override
  State<InheritedCounterPage> createState() => _InheritedCounterPageState();
}

class _InheritedCounterPageState extends State<InheritedCounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counter: _counter,
      incrementCounter: _incrementCounter,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Inherited Widget 카운터'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Inherited Widget으로 구현한 카운터:'),
              InheritedCounterDisplay(),
              InheritedCounterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
