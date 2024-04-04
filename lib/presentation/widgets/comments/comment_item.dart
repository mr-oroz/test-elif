import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.data,
    required this.like,
    required this.username,
  });

  final String comment;
  final String data;
  final String like;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: AppFonts.w500f16.copyWith(color: AppColors.textColor),
        ),
        Text(
          comment,
          style: AppFonts.w400f16.copyWith(color: AppColors.textColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data,
              style: AppFonts.w400f14.copyWith(color: AppColors.grey),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Нравится: $like',
                style: AppFonts.w400f14.copyWith(color: AppColors.textColor),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Ответить',
                style: AppFonts.w400f14.copyWith(color: AppColors.textColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}