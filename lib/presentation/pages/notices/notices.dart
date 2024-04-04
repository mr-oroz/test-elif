import 'package:flutter/material.dart';
import 'package:test_elif/presentation/data/data.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/custom_container/custom_container.dart';
import 'package:test_elif/presentation/widgets/notices_item/notices_item.dart';


class NoticesPage extends StatelessWidget {
  const NoticesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Уведомления',
          style: AppFonts.w500f18.copyWith(
            color: AppColors.textColor,
          ),
        ),
        leading: IconButton(
          iconSize: 12,
          color: AppColors.textColor,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            CustomContainer(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    noticesData.length,
                    (index) {
                      final item = noticesData[index];
                      return NoticesItem(widget: item.widget, text: item.text);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
