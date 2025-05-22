import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod_provider/riverpod.dart';
import '../riverpod_provider/riverpod_switch_provider.dart';

class RiverpodEasyLevel extends ConsumerWidget {
  const RiverpodEasyLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, child) {
              final easylvl = ref.watch(riverpodEasylevel);
              return Text(
                easylvl.toString(),
              );
            }),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 5,
            ),

            //swithch
            Consumer(builder: (context, ref, child) {
              final switchlvl = ref.watch(switchtype);
              return Switch(
                value: switchlvl.switchvalue,
                onChanged: (value) {
                  // switchlvl.switchvalue = value;
                  ref.read(switchtype.notifier).switchMethod();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
