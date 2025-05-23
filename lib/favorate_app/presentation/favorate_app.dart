import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/favorate_app/provider/favorate_provider.dart';

class FavorateApp extends ConsumerWidget {
  const FavorateApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favItem = ref.watch(favorateProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              ref.read(favorateProvider.notifier).filteredList(value);
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'All',
                  child: Text('All'),
                ),
                PopupMenuItem(
                  value: 'favorite',
                  child: Text('favorite'),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search', border: OutlineInputBorder()),
            onChanged: (value) {
              ref.read(favorateProvider.notifier).filteredList(value);
            },
          ),
          Expanded(
              child: ListView.builder(
            itemCount: favItem.filteredItems.length,
            itemBuilder: (context, index) {
              final item = favItem.filteredItems[index];
              return ListTile(
                title: Text(item.name),
                leading: item.favorate
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border_outlined),
              );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(favorateProvider.notifier).addItem();
        },
      ),
    );
  }
}
