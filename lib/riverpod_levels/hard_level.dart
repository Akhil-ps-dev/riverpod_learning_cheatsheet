import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/riverpod_levels/riverpod.dart';

class RiverpodHardLevel extends ConsumerWidget {
  const RiverpodHardLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(riverpodHardlevel).counter.toString()),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(riverpodHardlevel.notifier).incremntNumber();
                },
                child: Text('Increment')),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(riverpodHardlevel.notifier).decrementNumber();
                },
                child: Text('Decrement')),
          ],
        ),
      ),
    );
  }
}
