import 'package:anywhere_mobile_app/src/utils/image.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ImageUtils', () {
    test('returns true for valid image url', () {
      expect(
          ImageUtils.isValidImageUrl('https://example.com/image.jpg'), isTrue);
    });

    test('returns false for invalid image url', () {
      expect(ImageUtils.isValidImageUrl('not an image url'), isFalse);
    });
  });
}
