import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/riverpod_provider/riverpod.dart';
import 'package:flutter_riverpod_learning/riverpod_provider/riverpod_string_provider.dart';

class RiverpodStringDisaply extends ConsumerWidget {
  const RiverpodStringDisaply({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final riverpodstrings = ref.watch(riverpodString);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              riverpodstrings.id,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              riverpodstrings.name,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
