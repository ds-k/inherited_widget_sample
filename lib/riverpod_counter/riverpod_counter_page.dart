import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_button.dart';

class RiverpodCounterPage extends ConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod 카운터'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Riverpod으로 구현한 카운터:'),
            RiverpodCounterDisplay(),
            RiverpodCounterButton(),
          ],
        ),
      ),
    );
  }
}
