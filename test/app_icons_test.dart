import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_elif/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.account).existsSync(), isTrue);
    expect(File(AppIcons.accountActive).existsSync(), isTrue);
    expect(File(AppIcons.activeAnnouncement).existsSync(), isTrue);
    expect(File(AppIcons.activeGroup).existsSync(), isTrue);
    expect(File(AppIcons.activeHome).existsSync(), isTrue);
    expect(File(AppIcons.activeIssue).existsSync(), isTrue);
    expect(File(AppIcons.announcement).existsSync(), isTrue);
    expect(File(AppIcons.bell).existsSync(), isTrue);
    expect(File(AppIcons.chat).existsSync(), isTrue);
    expect(File(AppIcons.comment).existsSync(), isTrue);
    expect(File(AppIcons.group).existsSync(), isTrue);
    expect(File(AppIcons.heart).existsSync(), isTrue);
    expect(File(AppIcons.home).existsSync(), isTrue);
    expect(File(AppIcons.issue).existsSync(), isTrue);
    expect(File(AppIcons.play).existsSync(), isTrue);
    expect(File(AppIcons.repost).existsSync(), isTrue);
  });
}
