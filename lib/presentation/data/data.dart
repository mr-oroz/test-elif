import 'package:flutter/material.dart';
import 'package:test_elif/presentation/models/bottom_navigation_items_model.dart';
import 'package:test_elif/presentation/models/comment_model.dart';
import 'package:test_elif/presentation/models/notices_model.dart';
import 'package:test_elif/presentation/models/post_card_model.dart';
import 'package:test_elif/presentation/widgets/my_buttons/subscribe_button.dart';
import 'package:test_elif/presentation/widgets/posts/post_image.dart';
import 'package:test_elif/presentation/widgets/posts/post_images_grid.dart';
import 'package:test_elif/presentation/widgets/posts/post_video_card.dart';
import 'package:test_elif/resources/resources.dart';

List<PostCardModel> posts = [
  PostCardModel(
      text:
          'Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.',
      username: 'Ella Ivanova',
      data: '22 мар в 08:39',
      like: '255',
      repost: '6',
      comments: '32',
      avatar: AppImages.ella),
  PostCardModel(
      postImages: const PostVideoCard(),
      text: 'Нет ничего более удивительного',
      username: 'Nastya',
      data: '22 мар в 08:39',
      like: '255',
      repost: '6',
      comments: '32',
      avatar: AppImages.ella),
  PostCardModel(
      postImages: const PostImagesGrid(),
      text: 'Мои работы за 3 дня! Оцените в комментариях по 10 бальной шкале!',
      username: 'Nasti',
      data: '22 мар в 08:39',
      like: '255',
      repost: '6',
      comments: '32',
      avatar: AppImages.ella)
];

List<BottomNavigationItemsModel> items = [
  BottomNavigationItemsModel(
    image: Image.asset(AppIcons.home, width: 18, height: 18),
    activeImage: Image.asset(AppIcons.activeHome, width: 18, height: 18),
    text: 'Главная',
  ),
  BottomNavigationItemsModel(
    image: Image.asset(
      AppIcons.announcement,
      width: 18,
      height: 18,
    ),
    activeImage:
        Image.asset(AppIcons.activeAnnouncement, width: 18, height: 18),
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

List<CommentModel> commentItems = [
  CommentModel(
      username: 'Elena',
      comment:
          'Все супер! Хочу записаться. Можете сказать сколько стоило этот маникюр?',
      like: '1'),
  CommentModel(
      username: 'Nastii',
      comment:
          'Все супер! Хочу записаться. Можете сказать сколько стоило этот маникюр?',
      like: '1'),
];

List<NoticesModel> noticesData = [
  NoticesModel(
    text: 'Подписался(ась) на ваши обновления',
    widget: const SubscribeButton(),
  ),
  NoticesModel(
    text: 'Оставил(а) комментарии под вашим постом',
    widget: const PostImage(),
  ),
  NoticesModel(
    text: 'Подписался(ась) на ваши обновления',
    widget: const SubscribeButton(),
  ),
  NoticesModel(
    text: 'Лайкнул(а) ваш пост',
    widget: const PostImage(),
  ),
  NoticesModel(
    text: 'Сделал репост вашего поста',
    widget: const PostImage(),
  ),
  NoticesModel(
    text: 'Подписался(ась) на ваши обновления',
    widget: const SubscribeButton(),
  ),
  NoticesModel(
    text: 'Подписался(ась) на ваши обновления',
    widget: const SubscribeButton(),
  ),
];
