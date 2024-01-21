
import 'dart:math';

class ImageUtils {
  static bool isValidImageUrl(String url) {
    final RegExp regExp = RegExp(
      r"(http(s?):)([/|.|\w|\s|-])*\.(?:jpg|gif|png)",
      caseSensitive: false,
    );

    return regExp.hasMatch(url);
  }
}