import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../inherited_counter/counter_inherited_widget.dart';
import '../riverpod_counter/counter_provider.dart';

class InheritedCounterButton extends StatelessWidget {
  const InheritedCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: CounterInheritedWidget.of(context).incrementCounter,
      child: const Icon(Icons.add),
    );
  }
}

class RiverpodCounterButton extends ConsumerWidget {
  const RiverpodCounterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => ref.read(counterProvider.notifier).increment(),
      child: const Icon(Icons.add),
    );
  }
}
