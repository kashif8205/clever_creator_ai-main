import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';

class TextToImageScreen extends StatefulWidget {
  const TextToImageScreen({super.key});

  @override
  State<TextToImageScreen> createState() => _TextToImageScreenState();
}

class _TextToImageScreenState extends State<TextToImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.textToImage,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AppAssets.avatar),
                  const SizedBox(width: 10),
                  const Text(
                    AppStrings.you,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                AppStrings.beautifulStoryTxt,
                style: AppTextStyles.processOfPlantstyle,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              const Divider(thickness: 1),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(AppAssets.aiScienceLogo),
                  const SizedBox(width: 10),
                  const Text(
                    AppStrings.textToImgGen,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                AppStrings.imgLableTxt,
                style: AppTextStyles.imgLableTxtStyle,
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              Row(
                children: [
                  // First container with text field and icon button
                  Expanded(
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: AppColors.iconTxtClr, // Border color
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: AppStrings.askMeAnyThing,
                                hintStyle: AppTextStyles.textfieldStyle,
                                border: InputBorder.none, // No border
                                enabledBorder: InputBorder.none, // No border when enabled
                                focusedBorder: InputBorder.none, // No border when focused
                                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                              ),
                              style: AppTextStyles.textfieldStyle, // Text style
                            ),
                          ),
                          CustomIconButton(
                            onPressed: () {
                              // Add functionality here
                            },
                            iconButton: AppAssets.imageUploadIcon,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Add spacing between the containers
                  // Second container
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.blueClr,
                    ),
                    child: Center(
                      child: CustomIconButton(
                        onPressed: () {
                          print("hello");
                        },
                        iconButton: AppAssets.sendIcon),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}