
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key, required this.text, required this.image,
  });
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        height: 75,
        width: 111,
       decoration: BoxDecoration(
        color: AppColors.textfieldClr,
        borderRadius: BorderRadius.circular(10),
       ),
       child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
             Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyles.gridViewIconTextStyle,),
          ],
        ),
       ),
      ),
    );
  }
}
