
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:flutter/material.dart';

class VoiceRecoderContainer extends StatelessWidget {
  const VoiceRecoderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 61,
      decoration: BoxDecoration(
        color: AppColors.fourthClr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Image.asset(AppAssets.voiceIcon),
      ),
    );
  }
}
