import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class SingleDigitInputField extends StatefulWidget {
  const SingleDigitInputField({
    super.key,
    required this.controller,
    this.focusNode,
    this.nextFocusNode,
    this.previousFocusNode,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final FocusNode? previousFocusNode;
  @override
  State<SingleDigitInputField> createState() => _SingleDigitInputFieldState();
}

class _SingleDigitInputFieldState extends State<SingleDigitInputField> {
  bool _isFocused = false;

  void _autoFocusNext() {
    if (widget.controller.text.length == 1 && widget.focusNode != null) {
      FocusScope.of(context).requestFocus(widget.focusNode);
    }
  }

  void _handleFocus() {
    setState(() {
      _isFocused = widget.focusNode!.hasFocus;
    });
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_autoFocusNext);
    widget.focusNode?.addListener(_handleFocus);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_autoFocusNext);
    widget.focusNode?.removeListener(_handleFocus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 80,
      decoration: BoxDecoration(
        color: _isFocused ? Colors.white : AppColors.bgGrey,
        borderRadius: BorderRadius.circular(10),
        border: _isFocused ? Border.all(width: 1, color: AppColors.main) : null,
      ),
      child: Center(
        child: TextField(
          focusNode: widget.focusNode,
          maxLength: 1,
          style: AppFonts.w400f30.copyWith(
            color: AppColors.textColor,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            counterText: '',
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          onChanged: (value) {
            if (value.length == 1) {
              widget.nextFocusNode?.requestFocus();
            } else if (value.isEmpty) {
              widget.previousFocusNode?.requestFocus();
            }
          },
        ),
      ),
    );
  }
}
