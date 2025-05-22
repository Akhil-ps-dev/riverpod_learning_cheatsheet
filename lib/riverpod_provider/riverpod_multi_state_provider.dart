import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/multiple_state_provider_model.dart';

final multistateProvider = StateProvider<AppState>(
  (ref) {
    return AppState(slider: 0.0, showPassword: false);
  },
);
