import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/Todo_app/model/item_model.dart';

// final itemProvider = StateNotifierProvider<ItemNotifier, List<ItemModel>>(
//   (ref) {
//     return ItemNotifier();
//   },
// );

// class ItemNotifier extends StateNotifier<List<ItemModel>> {
//   ItemNotifier() : super([]);

//   void addItem(String name) {
//     final item = ItemModel(id: DateTime.now().toString(), name: name);
//     state.add(item);
//     state = state.toList();
//   }
// }

final itemProvider = StateNotifierProvider<ItemNotifier, List<ItemModel>>(
  (ref) {
    return ItemNotifier();
  },
);

class ItemNotifier extends StateNotifier<List<ItemModel>> {
  ItemNotifier() : super([]);

  void addItem(String name) {
    final item = ItemModel(id: DateTime.now().toString(), name: name);
    state.add(item);
    state = state.toList();
  }

  void deleteItem(String id) {
    state.removeWhere((item) => item.id == id);
    state = state.toList();
  }

  void updateItem(String id, String name) {
    int foundIndex = state.indexWhere((item) => item.id == id);
    state[foundIndex].name = name;
    state = state.toList();
  }
}
