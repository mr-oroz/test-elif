import 'package:flutter/material.dart';
import 'package:test_elif/resources/resources.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      child: Image(
        width: 48,
        height: 48,
        fit: BoxFit.cover,
        image: AssetImage(
          AppImages.image2,
        ),
      ),
    );
  }
}