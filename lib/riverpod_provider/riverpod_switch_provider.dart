import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/switch_method.dart';

final switchtype = ChangeNotifierProvider<RiverpodSwitch>(
  (ref) {
    return RiverpodSwitch(
      switchvalue: false,
    );
  },
);
