import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/item_provider.dart';

class TodoHome extends ConsumerStatefulWidget {
  const TodoHome({super.key});

  @override
  ConsumerState<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends ConsumerState<TodoHome> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final items = ref.watch(itemProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Todo List")),
      body: items.isEmpty
          ? Center(
              child: Text('Data is empty'),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final itemDetail = items[index];
                return ListTile(
                    title: Text(itemDetail.name.toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            ref
                                .read(itemProvider.notifier)
                                .updateItem(itemDetail.id, 'null ed ');
                          },
                          icon: const Icon(Icons.edit, color: Colors.grey),
                        ),
                        IconButton(
                          onPressed: () {
                            ref
                                .read(itemProvider.notifier)
                                .deleteItem(itemDetail.id);
                          },
                          icon: const Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ));
              },
            ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter item',
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    ref.read(itemProvider.notifier).addItem(value.trim());
                    _controller.clear();
                  }
                },
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                if (_controller.text.trim().isNotEmpty) {
                  ref
                      .read(itemProvider.notifier)
                      .addItem(_controller.text.trim());
                  _controller.clear();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
