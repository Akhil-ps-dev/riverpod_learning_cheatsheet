import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/riverpod_provider/search_provider.dart';

class SearchQuery extends ConsumerWidget {
  const SearchQuery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              ref.read(searchProvider.notifier).search(value);
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final searchQuery = ref.watch(searchProvider);

              return Text(searchQuery.search);
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final searchQuery = ref.watch(searchProvider);
              return Switch(
                  value: searchQuery.isChange,
                  onChanged: (value) {
                    ref.read(searchProvider.notifier).onChange(value);
                  });
            },
          ),
        ],
      ),
    );
  }
}
