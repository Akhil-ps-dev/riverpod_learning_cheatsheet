
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod_provider/riverpod.dart';

class RiverpodEasyLevel extends ConsumerWidget {
  const RiverpodEasyLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(riverpodEasylevel).toString(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(riverpodEasylevel.notifier).state++;
                },
                child: Text('Increment')),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(riverpodEasylevel.notifier).state--;
                },
                child: Text('Decrement')),
          ],
        ),
      ),
    );
  }
}
