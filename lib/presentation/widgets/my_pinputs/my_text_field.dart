import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscureText,
  });
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _passwordVisible,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(
                splashRadius: 13,
                icon: Icon(_passwordVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
                onPressed: () {
                  _passwordVisible = !_passwordVisible;
                  setState(() {});
                },
                color: Theme.of(context).primaryColor,
              )
            : null,
        hintText: widget.hintText,
        hintStyle: AppFonts.w500f16.copyWith(
          color: AppColors.grey,
        ),
        fillColor: AppColors.bgGrey,
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
