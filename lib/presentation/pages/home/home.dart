import 'package:flutter/material.dart';
import 'package:test_elif/presentation/data/data.dart';
import 'package:test_elif/presentation/pages/chat/chat.dart';
import 'package:test_elif/presentation/pages/comments_details/comments_details.dart';
import 'package:test_elif/presentation/pages/notices/notices.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/posts/post_card.dart';
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NoticesPage(),
                ),
              );
            },
            child: Image.asset(AppIcons.bell, width: 26, height: 26),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatPage(),
                ),
              );
            },
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
          children: List.generate(
            posts.length,
            (index) {
              final post = posts[index];
              return PostCard(
                post: post,
                index: index,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommentsDetailsPage(
                        post: post,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
