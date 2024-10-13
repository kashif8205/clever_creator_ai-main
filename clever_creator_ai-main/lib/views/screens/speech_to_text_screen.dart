import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_voice_container.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';

class SpeechToTextScreen extends StatefulWidget {
  const SpeechToTextScreen({super.key});

  @override
  State<SpeechToTextScreen> createState() => _SpeechToTextScreenState();
}

class _SpeechToTextScreenState extends State<SpeechToTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.speechToTxt,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AppAssets.avatar),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  AppStrings.you,
                  style: AppTextStyles.imgLableTxtStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.pressAndHold,
              style: AppTextStyles.processOfPlantstyle,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 50,
            ),
           const VoiceRecoderContainer(),
            const SizedBox(
              height: 40,
            ),
          const  Text(
              AppStrings.timerTxt,
              style: AppTextStyles.screenSubTitleStyle,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(AppAssets.aiScienceLogo),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  AppStrings.speechToTxt,
                  style: AppTextStyles.imgLableTxtStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.beautifulStoryTxt,
              style: AppTextStyles.processOfPlantstyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRowButton(
                  icon: AppAssets.copyIcon,
                  text: AppStrings.copy,
                ),
                CustomRowButton(
                  icon: AppAssets.shareIcon,
                  text: AppStrings.share,
                ),
                CustomRowButton(
                  icon: AppAssets.regenerateIcon,
                  text: AppStrings.regenerate,
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
