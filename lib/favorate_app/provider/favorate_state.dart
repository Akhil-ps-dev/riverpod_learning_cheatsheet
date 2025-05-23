import 'package:flutter_riverpod_learning/favorate_app/model/item.dart';

class FavorateState {
  final List<Item> allItems;
  final List<Item> filteredItems;
  final String search;

  FavorateState({
    required this.allItems,
    required this.filteredItems,
    required this.search,
  });

  FavorateState copyWith({
    List<Item>? allItems,
    List<Item>? filteredItems,
    String? search,
  }) {
    return FavorateState(
      allItems: allItems ?? this.allItems,
      filteredItems: filteredItems ?? this.filteredItems,
      search: search ?? this.search,
    );
  }
}
