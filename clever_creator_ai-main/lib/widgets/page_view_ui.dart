import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageViewUi extends StatelessWidget {
  const PageViewUi({
    super.key,
    required  this.image,
  required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: 300,
        ),
        Text(
          
          title,
          style: AppTextStyles.titleTxtStyle,
          textAlign: TextAlign.center,
          
        )
      ],
    );
  }
}
