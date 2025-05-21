import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/riverpod_get_model.dart';
import 'package:http/http.dart' as http;

final dataProvider = FutureProvider<List<RiverpodGetModel>>(
  (ref) async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
    if (response.statusCode == 200) {
      //json decode
      final List<dynamic> data = jsonDecode(response.body);
      //mapping the json data to the model..
      return data.map((json) {
        return RiverpodGetModel.fromJson(json);
      }).toList();
    } else {
      throw Exception("Failed to load data");
    }
  },
);
