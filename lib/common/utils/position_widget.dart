import 'package:flutter/cupertino.dart';

class PositionWidget {
  static double getRotation(GlobalKey key) {
    RenderObject renderBox = key.currentContext!.findRenderObject()!;
    return renderBox.getTransformTo(null).getRotation()[1];
  }
}
