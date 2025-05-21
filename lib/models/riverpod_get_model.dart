class RiverpodGetModel {
  final int id;
  final String title;
  final String body;
  RiverpodGetModel({
    required this.id,
    required this.title,
    required this.body,
  });

  factory RiverpodGetModel.fromJson(Map<String, dynamic> json) {
    return RiverpodGetModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
