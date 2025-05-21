import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/riverpod_provider/riverpod_get_method_provider.dart';

class RiverpodFutureProviderGetScreen extends ConsumerWidget {
  const RiverpodFutureProviderGetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showData = ref.watch(dataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Riverpod FutureProvider Get method',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: showData.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return ListTile(
                    title: Text(item.title.toString()),
                    subtitle: Text(item.body.toString()),
                  );
                });
          },
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          error: (error, stack) => Center(
                child: Text(error.toString()),
              )),
    );
  }
}
