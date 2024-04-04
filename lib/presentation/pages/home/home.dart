import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/post_card/post_card.dart';
import 'package:test_elif/presentation/widgets/post_images_grid/post_images_grid.dart';
import 'package:test_elif/presentation/widgets/post_video_card/post_video_card.dart';
import 'package:test_elif/resources/resources.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Главная',
          style: AppFonts.w500f22.copyWith(
            color: AppColors.textColor,
          ),
        ),
        leading: SizedBox(
          width: 26,
          height: 26,
          child: Image.asset(AppImages.avatar),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(AppIcons.bell, width: 26, height: 26),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: Image.asset(AppIcons.chat, width: 26, height: 26),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: const [
            // тут можно сделать проще например создать list генерировать я пока не хотел такого сделать
            SizedBox(height: 16),
            // создал свой виджет (PostCard) чтобы не повторять верстать с помощю аргумента передаем каждого элементы
            PostCard(
              username: 'Ella Ivanova',
              data: '22 мар в 08:39',
              avatar: AppImages.ella,
              postText:
                  'Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.',
              like: '255',
              comment: '32',
              repost: '6',
            ),
            SizedBox(height: 16),
            PostCard(
              username: 'Nastya',
              data: '22 мар в 08:39',
              avatar: AppImages.ella,
              postText: 'Нет ничего более удивительного',
              like: '255',
              comment: '32',
              repost: '6',
              postImage: PostVideoCard(),
            ),
            SizedBox(height: 16),
            PostCard(
              username: 'Nasti',
              data: '22 мар в 08:39',
              avatar: AppImages.ella,
              postText:
                  'Мои работы за 3 дня! Оцените в комментариях по 10 бальной шкале!',
              like: '255',
              comment: '32',
              repost: '6',
              postImage: PostImagesGrid(),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
