import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/subscribe_button.dart';

import 'package:test_elif/presentation/widgets/post_icon_text/post_icon_text.dart';
import 'package:test_elif/presentation/widgets/user_avatar_with_name/user_avatar_with_name.dart';
import 'package:test_elif/resources/resources.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.username,
    required this.data,
    required this.avatar,
    required this.postText,
    required this.like,
    this.postImage,
    this.comment,
    required this.repost,
  });

  final String username;
  final String data;
  final String avatar;
  final String postText;

  final String like;
  final Widget? postImage;
  final String? comment;
  final String repost;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  username: username,
                  avatar: avatar,
                  data: data,
                ),
              ),
              const Flexible(child: SubscribeButton())
            ],
          ),
          const SizedBox(height: 6),
          Text(
            postText,
            style: AppFonts.w400f16.copyWith(
              color: AppColors.textColor,
            ),
          ),
          if (postImage != null) const SizedBox(height: 6),
          if (postImage != null) postImage!,
          const SizedBox(height: 6),
          Row(
            children: [
              PostIconText(
                icon: AppIcons.heart,
                text: like,
              ),
              if (comment != null) const SizedBox(width: 6),
              if (comment != null)
                PostIconText(
                  icon: AppIcons.comment,
                  text: comment!,
                ),
              const SizedBox(width: 6),
              PostIconText(
                icon: AppIcons.repost,
                text: repost,
              ),
            ],
          )
        ],
      ),
    );
  }
}
