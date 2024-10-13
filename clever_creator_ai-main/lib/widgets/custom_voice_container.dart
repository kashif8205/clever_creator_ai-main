
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:flutter/material.dart';

class VoiceRecoderContainer extends StatelessWidget {
  const VoiceRecoderContainer({
    super.key, this.iconButton, this.onPressed 
  });
final String? iconButton;
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
          icon: Image.asset(AppAssets.voiceIcon))
      ),
    );
  }
}
