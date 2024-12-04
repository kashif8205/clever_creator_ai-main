
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:flutter/material.dart';

class VoiceRecoderContainer extends StatelessWidget {
  const VoiceRecoderContainer({
    super.key,
     this.icon,
      this.onPressed 
  });
final Widget? icon;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 61,
      decoration: BoxDecoration(
        color: AppColors.blueClr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed, 
          icon: icon ?? const Icon(Icons.mic))
      ),
    );
  }
}
