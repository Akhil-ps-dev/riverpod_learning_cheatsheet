import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/favorate_app/model/item.dart';

import 'favorate_state.dart';

final favorateProvider = StateNotifierProvider<FavorateProvider, FavorateState>(
  (ref) {
    return FavorateProvider();
  },
);

class FavorateProvider extends StateNotifier<FavorateState> {
  FavorateProvider()
      : super(FavorateState(allItems: [], filteredItems: [], search: ''));

  void addItem() {
    List<Item> item = [
      Item(name: 'bmw', id: 1, favorate: true),
      Item(name: 'audi', id: 2, favorate: false),
      Item(name: 'mercedes', id: 3, favorate: true),
      Item(name: 'toyota', id: 4, favorate: false),
      Item(name: 'honda', id: 5, favorate: true),
      Item(name: 'ford', id: 6, favorate: false),
      Item(name: 'chevrolet', id: 7, favorate: true),
      Item(name: 'nissan', id: 8, favorate: false),
      Item(name: 'hyundai', id: 9, favorate: true),
      Item(name: 'subaru', id: 10, favorate: false),
    ];
    state =
        state.copyWith(allItems: item.toList(), filteredItems: item.toList());
  }

  void filteredList(String search) {
    state =
        state.copyWith(filteredItems: _filteredItem(state.allItems, search));
  }

  List<Item> _filteredItem(List<Item> items, String search) {
    if (search.isEmpty) {
      return items;
    }
    return items
        .where((item) => item.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
  }

  //fav item
  void favorite(String options) {
    state = state.copyWith(filteredItems: _favItem(state.allItems, options));
  }

  List<Item> _favItem(List<Item> items, String options) {
    if (options == 'All') {
      return items;
    }
    return items.where((item) => item.favorate == true).toList();
  }
}
