import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text, required this.width, required this.height, required this.textStyle,
  });

  final Function() onPressed;
  final String text;
  final double width;
  final double height; 
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(
          text,
          style: textStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}