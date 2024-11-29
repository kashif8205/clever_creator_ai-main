import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({
    super.key,
    this.backgroundColor = AppColors.blueClr,
    this.foregroundColor = AppColors.primaryclr,
    this.onPressed,
    required this.elBtnTxt,
    this.elevatedtBtnTxtStyle = AppTextStyles.eltBtnTxtStyle,
    this.eltBtnSize = const Size(353, 58),
    this.borderRadius = const BorderRadius.all(Radius.circular(100)), 
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback? onPressed;
  final String elBtnTxt;
  final TextStyle elevatedtBtnTxtStyle;
  final Size eltBtnSize;
  final BorderRadius borderRadius; 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
        foregroundColor: WidgetStateProperty.all<Color>(foregroundColor),
        minimumSize: WidgetStateProperty.all<Size>(eltBtnSize),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius, 
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        elBtnTxt,
        style: elevatedtBtnTxtStyle,
      ),
    );
  }
}
