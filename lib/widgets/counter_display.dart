import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../inherited_counter/counter_inherited_widget.dart';
import '../riverpod_counter/counter_provider.dart';

class InheritedCounterDisplay extends StatelessWidget {
  const InheritedCounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterInheritedWidget.of(context).counter;
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class RiverpodCounterDisplay extends ConsumerWidget {
  const RiverpodCounterDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
