import 'package:flutter/material.dart';
import 'package:test_elif/resources/resources.dart';

class PostVideoCard extends StatelessWidget {
  const PostVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 394,
            image: AssetImage(
              AppImages.image,
            ),
          ),
        ),
        const Positioned(
          right: 10,
          bottom: 10,
          child: Image(
            width: 22,
            height: 22,
            image: AssetImage(AppIcons.play),
          ),
        )
      ],
    );
  }
}