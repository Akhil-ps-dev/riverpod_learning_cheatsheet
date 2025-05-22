import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpod_provider/riverpod_multi_state_provider.dart';

class MultiStateSlider extends ConsumerWidget {
  const MultiStateSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Consumer(
                builder: (context, ref, child) {
                  final slider = ref.watch(multistateProvider);
                  return InkWell(
                    onTap: () {
                      ref.read(multistateProvider.notifier).state = ref
                          .read(multistateProvider.notifier)
                          .state
                          .copyWith(showPassowrd: !slider.showPassword);
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.amber,
                      child: slider.showPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  );
                },
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                final slider = ref.watch(multistateProvider).slider;
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withValues(alpha: slider),
                  child: Center(
                    child: Text(
                      slider.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
            ),
            Consumer(builder: (context, ref, child) {
              final slider = ref.watch(multistateProvider);
              return Slider(
                  value: slider.slider,
                  onChanged: (value) {
                    ref.read(multistateProvider.notifier).state =
                        ref.read(multistateProvider.notifier).state.copyWith(
                              slider: value,
                            );
                    // sliderread.state = value;
                  });
            })
          ],
        ),
      ),
    );
  }
}
