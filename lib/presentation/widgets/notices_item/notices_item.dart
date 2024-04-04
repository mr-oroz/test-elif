import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/resources/resources.dart';

class NoticesItem extends StatelessWidget {
  const NoticesItem({
    super.key,
    required this.widget,
    required this.text,
  });
  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
                width: 48,
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppImages.ella),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nastya',
                      style:
                          AppFonts.w500f16.copyWith(color: AppColors.textColor),
                    ),
                    Text(
                      text,
                      style:
                          AppFonts.w400f13.copyWith(color: AppColors.textColor),
                    ),
                    Text(
                      '2 нед.',
                      overflow: TextOverflow.clip,
                      style: AppFonts.w400f14.copyWith(color: AppColors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Flexible(child: widget),
      ],
    );
  }
}
