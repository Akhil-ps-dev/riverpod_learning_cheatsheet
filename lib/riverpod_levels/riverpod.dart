import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/models/riverpod_models.dart';

final riverpodEasylevel = StateProvider<int>((ref) {
  return 0;
});

final riverpodHardlevel = ChangeNotifierProvider<RiverpodModel>(
  (ref) {
    return RiverpodModel(counter: 0);
  },
);
