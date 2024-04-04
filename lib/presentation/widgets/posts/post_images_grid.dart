import 'package:flutter/material.dart';
import 'package:test_elif/resources/resources.dart';

class PostImagesGrid extends StatelessWidget {
  const PostImagesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AppImages.image,
      AppImages.image2,
      AppImages.image3,
      AppImages.image4,
      AppImages.image2,
      AppImages.image5,
    ];
    return SizedBox(
      height: 240,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: (1 / 1), // Соотношение сторон для каждого элемента
          children: List.generate(
            6,
            (index) {
              // Генерируем 6 виджетов для сетки
              return Image(
                fit: BoxFit.cover,
                image: AssetImage(images[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}