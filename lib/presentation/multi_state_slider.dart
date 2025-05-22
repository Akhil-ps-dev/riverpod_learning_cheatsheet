import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpod_provider/riverpod_slider_provider.dart';

class MultiStateSlider extends ConsumerWidget {
  const MultiStateSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slider = ref.watch(sliderProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red.withValues(alpha: slider),
              child: Center(
                child: Text(
                  slider.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Slider(
                value: slider,
                onChanged: (value) {
                  ref.read(sliderProvider.notifier).state = value;
                }),
          ],
        ),
      ),
    );
  }
}
