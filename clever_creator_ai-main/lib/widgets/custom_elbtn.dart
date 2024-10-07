import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn(
      {super.key,
       this.backgroundColor = AppColors.fourthClr,
       this.foregroundColor  = AppColors.primaryclr,
       this.onPress, required this.elBtnTxt,  
       this.elevatedtBtnTxtStyle = AppTextStyles.eltBtnTxtStyle,  
       this.eltBtnSize = const Size(353, 58)});
  
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback? onPress;
  final String elBtnTxt;
  final TextStyle elevatedtBtnTxtStyle;
  final Size eltBtnSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
        foregroundColor: WidgetStateProperty.all<Color>(foregroundColor),
        minimumSize: WidgetStateProperty.all<Size>(eltBtnSize),
      ),
      onPressed: onPress,
      child: Text(
        elBtnTxt,
        style: elevatedtBtnTxtStyle,
      ),
    );
  }
}
