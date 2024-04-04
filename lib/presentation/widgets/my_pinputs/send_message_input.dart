import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';

class SendMessageInput extends StatelessWidget {
  const SendMessageInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 9,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors.bgGrey,
                  borderRadius: BorderRadius.circular(30)),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Ваш комментарий',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: IconButton(
              onPressed: () {},
              icon:  Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor
                ),
                child: const Center(child: Icon(Icons.arrow_upward, color: Colors.white,)),
              ),
            ),
          )
        ],
      ),
    );
  }
}