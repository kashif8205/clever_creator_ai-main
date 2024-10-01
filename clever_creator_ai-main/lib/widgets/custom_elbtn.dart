import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn(
      {super.key,
       this.backgroundColor,
       this.foregroundColor,
       this.onPress, required this.elBtnTxt, required this.elevatedtBtnTxtStyle, required this.eltBtnSize});
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPress;
  final String elBtnTxt;
  final TextStyle elevatedtBtnTxtStyle;
  final Size eltBtnSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor,
          foregroundColor:foregroundColor,
          minimumSize:eltBtnSize ),
           
      onPressed: onPress,
      child: Text(
        elBtnTxt,
        style: elevatedtBtnTxtStyle,
      ),
    );
  }
}
