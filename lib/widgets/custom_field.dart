import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
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
    this.obscureText = false,
    this.controller
  });

  final String? hintText;
  final String? prefixIcon;
  final Widget? suffixIcon; 
  final TextStyle? textStyle;
  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
   bool _isObscure= false;
   
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(minHeight: 20, minWidth: 20),
        suffixIconConstraints: const BoxConstraints(minHeight: 20, minWidth: 20),
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SvgPicture.asset(widget.prefixIcon!),
              )
            : null,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.iconTxtClr,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure; // Toggle visibility
                  });
                },
              )
            : widget.suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: widget.suffixIcon, // Directly use the Widget for suffixIcon
                  )
                : null,
        hintText: widget.hintText,
        hintStyle: widget.textStyle,
        fillColor: AppColors.textfieldClr,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
          borderSide: widget.borderSide ?? BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        
      ),
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      obscureText: _isObscure , // Toggle visibility if obscureText is true
      obscuringCharacter: "*",
      controller: widget.controller,
    );
  }
}
