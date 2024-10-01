
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key, this.onPressed, required this.iconButton,

  });
final VoidCallback? onPressed;
final String iconButton;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed:onPressed , 
    icon: SvgPicture.asset(iconButton));
  }
}