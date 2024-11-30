import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomFieldAndButton extends StatelessWidget {
  const CustomFieldAndButton(
      {super.key, 
      this.icon = AppAssets.imageUploadIcon, 
      this.onPressed,
      this.onapressing
      });
  final String icon;
  final VoidCallback? onPressed;
  final VoidCallback? onapressing;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: AppColors.iconTxtClr,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: AppStrings.askMeAnyThing,
                        hintStyle: AppTextStyles.textfieldStyle,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      style: AppTextStyles.textfieldStyle,
                    ),
                  ),
                  CustomIconButton(
                    onPressed: onPressed,
                    iconButton: icon,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.blueClr,
          ),
          child: Center(
            child: CustomIconButton(
                onPressed:onapressing , 
                iconButton: AppAssets.sendIcon),
          ),
        ),
      ],
    );
  }
}
