import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    super.key,
     this.onPressed, required this.btnText, required this.onTap,
  });
  final VoidCallback? onPressed;
  final String btnText;
  final VoidCallback onTap;
 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextButton(
            onPressed: (){},
            text:btnText,
            textStyle: AppTextStyles.signInTxtStyle),
        InkWell(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(AppAssets.ellipse),
              SvgPicture.asset(AppAssets.arrow)
            ],
          ),
        )
      ],
    );
  }
}
