import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field_button.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';

class ImageGen2Screen extends StatefulWidget {
  const ImageGen2Screen({super.key});

  @override
  State<ImageGen2Screen> createState() => _TextToImageScreenState();
}

class _TextToImageScreenState extends State<ImageGen2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.imageGenerator,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                    AppStrings.yourPrompt,
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
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRowButton(
                    icon: AppAssets.editIcon,
                    text: AppStrings.editTxt,
                  ),
                  CustomRowButton(
                    icon: AppAssets.copyIcon,
                    text: AppStrings.copy,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
                    AppStrings.imageGenerator,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.imgLableTxt,
                style: AppTextStyles.imgLableTxtStyle,
              ),
             const SizedBox(
                height: 10,
              ),
              Image.asset(AppAssets.babyImg),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRowButton(
                    icon: AppAssets.downloadIcon,
                    text: AppStrings.download,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRowButton(
                    icon: AppAssets.editIcon,
                    text: AppStrings.edit,
                  ),
                  CustomRowButton(
                    icon: AppAssets.likeIcon,
                    text: AppStrings.like,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
             const CustomFieldAndButton()
            ],
          ),
        ),
      ),
    );
  }
}
