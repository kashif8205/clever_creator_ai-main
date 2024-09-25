import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    super.key,
    required this.onPressed, required this.btnText,
  });
  final VoidCallback onPressed;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextButton(
            onPressed: onPressed,
            text:btnText,
            textStyle: AppTextStyles.signInTxtStyle),
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(AppAssets.ellipse),
            SvgPicture.asset(AppAssets.arrow)
          ],
        )
      ],
    );
  }
}
