import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/riverpod_string_model.dart';

final riverpodString = Provider<RiverpodStringModel>(
  (ref) {
    return RiverpodStringModel(
      name: 'Riverpod String',
      id: '1',
    );
  },
);
