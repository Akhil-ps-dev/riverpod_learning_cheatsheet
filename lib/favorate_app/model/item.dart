class Item {
  final String name;
  final int id;
  final bool favorate;

  Item({required this.name, required this.id, required this.favorate});

  Item copywith({
    String? name,
    int? id,
    bool? favorate,
  }) {
    return Item(
        name: name ?? this.name,
        id: id ?? this.id,
        favorate: favorate ?? this.favorate);
  }
}
