import 'package:flutter/material.dart';
import 'package:test_elif/presentation/models/bottom_navigation_items_model.dart';
import 'package:test_elif/resources/resources.dart';

List<BottomNavigationItemsModel> items = [
  BottomNavigationItemsModel(
    image: Image.asset(AppIcons.home, width: 18, height: 18),
    activeImage: Image.asset(AppIcons.activeHome, width: 18, height: 18),
    text: 'Главная',
  ),
  BottomNavigationItemsModel(
    image: Image.asset(AppIcons.announcement, width: 18, height: 18,),
    activeImage: Image.asset(AppIcons.activeAnnouncement, width: 18, height: 18),
    text: 'Объявления',
  ),
  BottomNavigationItemsModel(
    image: Image.asset(AppIcons.issue, width: 18, height: 18),
    activeImage: Image.asset(AppIcons.activeIssue, width: 18, height: 18),
    text: 'Вопрос',
  ),
  BottomNavigationItemsModel(
    image: Image.asset(AppIcons.group, width: 18, height: 18),
    activeImage: Image.asset(AppIcons.activeGroup, width: 18, height: 18),
    text: 'Сообщества',
  ),
  BottomNavigationItemsModel(
    image: Image.asset(AppIcons.account, width: 18, height: 18),
    activeImage: Image.asset(AppIcons.accountActive, width: 18, height: 18),
    text: 'Профиль',
  ),
];
