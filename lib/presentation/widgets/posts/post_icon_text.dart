import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class PostIconText extends StatelessWidget {
  const PostIconText({
    super.key,
    required this.icon,
    required this.text, required this.onPessed,
  });

  final String icon;
  final String text;
  final Function() onPessed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPessed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        height: 32,
        decoration: BoxDecoration(
            color: AppColors.bgGrey, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Image(
              width: 20,
              height: 20,
              image: AssetImage(
                icon,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              text,
              style: AppFonts.w500f14.copyWith(color: AppColors.grey),
            )
          ],
        ),
      ),
    );
  }
}