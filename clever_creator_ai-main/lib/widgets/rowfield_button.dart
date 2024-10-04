
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFieldAndButton extends StatelessWidget {
  const CustomFieldAndButton({
    super.key, required this.icon, this.onPressed,
  });
final String icon;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: const BorderSide(color: AppColors.iconTxtClr),
            hintText: AppStrings.askMeAnyThing,
            textStyle: AppTextStyles.textfieldStyle,
            suffixIcon:icon
          )
        ),
        const SizedBox(width: 20),
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: AppColors.circleAvataClr,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: IconButton(onPressed: onPressed,
            icon: SvgPicture.asset(
              AppAssets.sendIcon,
              width: 18,
              height: 18,
            ),)
          ),
        ),
      ],
    );
  }
}
