import 'package:flutter/material.dart';
import 'package:flutter_riverpod_learning/presentation/search_query.dart';

import 'easy_level.dart';
import 'hard_level.dart';
import 'multi_state_slider.dart';
import 'riverpod_future_provider_get_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Riverpod'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RiverpodEasyLevel()),
                );
              },
              child: Text('Easy Level using StateProvider')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RiverpodHardLevel()),
                );
              },
              child: Text('Hard Level using ChangeNotifierProvider')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const RiverpodFutureProviderGetScreen()),
                );
              },
              child: Text('Riverpod FutureProvider ,Get method')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MultiStateSlider()),
                );
              },
              child: Text('Riverpod MultiState slider Provider')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchQuery()),
                );
              },
              child: Text('Riverpod Search ')),
        ],
      )),
    );
  }
}
