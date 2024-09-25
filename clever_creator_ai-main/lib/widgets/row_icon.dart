import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowIcon extends StatelessWidget {
  const RowIcon({
    super.key,
    required this.icon,
    required this.iconTxt,
  });

  final SvgPicture icon;
  final String iconTxt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 8),
        Text(iconTxt,style: AppTextStyles.iconTxtStyle,), 
      ],
    );
  }
}
