import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SecondaryBtn extends StatelessWidget {
  const SecondaryBtn({
    super.key,
    this.backgroundColor,
    this.foregroundColor = AppColors.primaryclr,
    this.buttonSize =const Size(90, 44),
    this.borderRadius = const BorderRadius.all(Radius.circular(16)), this.onPressed, this.text, 
    this.btnStyle = AppTextStyles.secondaryBtnStyle
  });

  final Color? backgroundColor;
  final Color foregroundColor;
  final Size buttonSize;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;
  final String? text;
  final TextStyle btnStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          width: 2,
          color: AppColors.primaryclr
        ),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: buttonSize,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius, 
        ),
      ),
      onPressed: onPressed,
      child:  Text(
        text?? '',
        style: btnStyle,
      ),
    );
  }
}
