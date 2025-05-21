import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/models/riverpod_hardlevel_models.dart';

final riverpodEasylevel = StateProvider<int>((ref) {
  return 0;
});

final riverpodHardlevel = ChangeNotifierProvider<RiverpodHardLevelModel>(
  (ref) {
    return RiverpodHardLevelModel(counter: 0);
  },
);

