import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/provider/doc_picker_provider.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field_button.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.chatBot),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                AppStrings.storyTxt,
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
                    AppStrings.chatBot,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.chatBotScreenDescription,
                style: AppTextStyles.imgLableTxtStyle,
              ),
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<DocumentPickerProvider>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      CustomFieldAndButton(
                        icon: AppAssets.documentIcon,
                        onPressed: () {
                          provider.pickDocument(context); // Trigger the provider
                        },
                      ),
                      const SizedBox(height: 10),
                      if (provider.pickedDocumentPath != null)
                        Text(
                          'Picked Document: ${provider.pickedDocumentPath}',
                          style: AppTextStyles.imgLableTxtStyle,
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
