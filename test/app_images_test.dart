import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_elif/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.avatar).existsSync(), isTrue);
    expect(File(AppImages.ella).existsSync(), isTrue);
    expect(File(AppImages.image).existsSync(), isTrue);
    expect(File(AppImages.image2).existsSync(), isTrue);
    expect(File(AppImages.image3).existsSync(), isTrue);
    expect(File(AppImages.image4).existsSync(), isTrue);
    expect(File(AppImages.image5).existsSync(), isTrue);
  });
}
