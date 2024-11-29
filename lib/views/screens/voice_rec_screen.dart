import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_voice_container.dart';
import 'package:flutter/material.dart';

class VoiceRecScreen extends StatefulWidget {
  const VoiceRecScreen({super.key});

  @override
  State<VoiceRecScreen> createState() => _VoiceRecScreenState();
}

class _VoiceRecScreenState extends State<VoiceRecScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const CustomAppBar(text: AppStrings.voiceRec, icon: AppAssets.share),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 36,
                width: 116,
                decoration: BoxDecoration(
                    color: AppColors.timerBGClr,
                    borderRadius: BorderRadius.circular(100)),
                child: const Center(
                  child: Text(
                    AppStrings.timerTxt,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              const Text(
                AppStrings.voiceRecord,
                style: AppTextStyles.voiceRecTxtStyle,
              ),
              Image.asset(AppAssets.voiceSymbol),
              const SizedBox(
                height: 190,
              ),
              const Text(
                AppStrings.timerTxt,
                style: AppTextStyles.cardTxtStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              VoiceRecoderContainer(
                onPressed: () {
                  print("Its working");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
