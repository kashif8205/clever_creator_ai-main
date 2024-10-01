
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomUploadContainer extends StatelessWidget {
  const CustomUploadContainer({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.containerBGClr,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             CustomIconButton(iconButton: AppAssets.uploadIcon,
           onPressed: () {
             
           },
             ),
               Text(
                text,
                style: AppTextStyles.secondaryTxtStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
