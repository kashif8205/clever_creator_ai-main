import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
  this.textStyle = AppTextStyles.signInTxtStyle,
  });
  final VoidCallback onPressed;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
