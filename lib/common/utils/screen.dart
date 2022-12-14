import 'package:flutter/services.dart';

class ScreenUtils {
  static fullScreen() {
    return SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [
          SystemUiOverlay.top,
          SystemUiOverlay.bottom,
        ]);
  }
}
