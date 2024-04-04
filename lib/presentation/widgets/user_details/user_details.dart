import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
    required this.username,
    required this.data,
  });
  final String username;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: AppFonts.w500f18.copyWith(color: AppColors.textColor),
        ),
        Text(
          data,
          style: AppFonts.w400f14.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}