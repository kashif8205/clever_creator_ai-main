import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.prefixText,
    this.onPressed, this.keyboardType,
  });
  final String? prefixText;
  final VoidCallback? onPressed;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 0, right: 10),
          child: Text(
            prefixText ?? '',
            style: AppTextStyles.imgLableTxtStyle,
          ),
        ),
        suffixIcon: CustomIconButton(
          iconButton: AppAssets.arrowIconAt45,
          onPressed: onPressed,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
      ),
      keyboardType:keyboardType ,
    );
  }
}
