import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle = AppTextStyles.secondaryTxtStyle,
    this.borderSide = BorderSide.none,
    this.borderRadius, 
    this.validator,
    this.keyboardType,
    this.obscureText = false
  });

  final String? hintText;
  final String? prefixIcon;
  final String? suffixIcon;
  final TextStyle? textStyle;
  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
  final String? Function(String?)? validator; 
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(minHeight: 20, minWidth: 20),
        suffixIconConstraints: const BoxConstraints(minHeight: 20, minWidth: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: prefixIcon != null 
              ? SvgPicture.asset(prefixIcon!) 
              : null,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: suffixIcon != null 
              ? SvgPicture.asset(suffixIcon!) 
              : null,
        ),
        hintText: hintText,
        hintStyle: textStyle,
        fillColor: AppColors.textfieldClr,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: borderSide ?? BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      ),
      keyboardType:keyboardType,
      validator: validator,
      obscureText:obscureText,
      obscuringCharacter: "*",
    );
  }
}
