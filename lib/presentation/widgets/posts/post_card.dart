import 'package:flutter/material.dart';
import 'package:test_elif/presentation/models/post_card_model.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/subscribe_button.dart';
import 'package:test_elif/presentation/widgets/posts/post_icon_text.dart';
import 'package:test_elif/presentation/widgets/users/user_avatar_with_name.dart';
import 'package:test_elif/resources/resources.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.onPressed,
    this.index,
    required this.post,
  });

  final PostCardModel post;
  final Function() onPressed;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16, top: index == 0 ? 16 : 0),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: UserAvatarWithName(
                  username: post.username,
                  avatar: post.avatar,
                  data: post.data,
                ),
              ),
              const Flexible(child: SubscribeButton())
            ],
          ),
          const SizedBox(height: 6),
          Text(
            post.text,
            style: AppFonts.w400f16.copyWith(
              color: AppColors.textColor,
            ),
          ),
          if (post.postImages != null) const SizedBox(height: 6),
          if (post.postImages != null) post.postImages!,
          const SizedBox(height: 6),
          Row(
            children: [
              PostIconText(
                onPessed: () {},
                icon: AppIcons.heart,
                text: post.like,
              ),
              const SizedBox(width: 6),
              PostIconText(
                onPessed: onPressed,
                icon: AppIcons.comment,
                text: post.comments,
              ),
              const SizedBox(width: 6),
              PostIconText(
                onPessed: () {},
                icon: AppIcons.repost,
                text: post.repost,
              ),
            ],
          )
        ],
      ),
    );
  }
}
