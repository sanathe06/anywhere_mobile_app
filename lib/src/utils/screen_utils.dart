import 'package:flutter/widgets.dart';

class ScreenUtils {
  static bool isTablet(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide > 600;
  }
}