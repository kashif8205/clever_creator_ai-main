import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:clever_creator_ai/widgets/rowfield_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScienceTutorScreen extends StatefulWidget {
  const ScienceTutorScreen({super.key});

  @override
  State<ScienceTutorScreen> createState() => _ScienceTutorScreenState();
}

class _ScienceTutorScreenState extends State<ScienceTutorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          text: AppStrings.scienceTutor, icon: AppAssets.share),
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
              height: 20,
            ),
            const Text(
              AppStrings.processOfPlant,
              style: AppTextStyles.processOfPlantstyle,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                RowIcon(
                    icon: SvgPicture.asset(AppAssets.editIcon),
                    iconTxt: AppStrings.editTxt),
                const SizedBox(
                  width: 20,
                ),
                RowIcon(
                    icon: SvgPicture.asset(AppAssets.copyIcon),
                    iconTxt: AppStrings.copy)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(AppAssets.aiScienceLogo),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  AppStrings.scienceTutor,
                  style: AppTextStyles.imgLableTxtStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.scienceTutorExp,
              style: AppTextStyles.imgLableTxtStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                RowIcon(
                    icon: SvgPicture.asset(AppAssets.copyIcon),
                    iconTxt: AppStrings.copy),
                const SizedBox(
                  width: 20,
                ),
                RowIcon(
                    icon: SvgPicture.asset(AppAssets.shareIcon),
                    iconTxt: AppStrings.share),
                const SizedBox(
                  width: 20,
                ),
                RowIcon(
                    icon: SvgPicture.asset(AppAssets.regenerateIcon),
                    iconTxt: AppStrings.regenerate),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 60,
            ),
           const CustomFieldAndButton(
            icon: AppAssets.documentIcon,
           ),
          ],
        ),
      ),
    );
  }
}