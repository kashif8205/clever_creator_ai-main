import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({
    super.key,
    required this.text,
    required this.icon,
    this.style = AppTextStyles.iconTxtStyle

  });
  final String text;
  final String icon;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset(icon)),
        Text(text, style: style,
        textAlign: TextAlign.start,)
      ],
    );
  }
}
