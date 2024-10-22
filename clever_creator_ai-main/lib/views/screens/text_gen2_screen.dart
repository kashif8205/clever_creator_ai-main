import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/text_to_image_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:clever_creator_ai/widgets/rowfield_button.dart';
import 'package:flutter/material.dart';

class TextGenerationScreen2 extends StatefulWidget {
  const TextGenerationScreen2({super.key});

  @override
  State<TextGenerationScreen2> createState() => _TextGenerationScreen2State();
}

class _TextGenerationScreen2State extends State<TextGenerationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          text: AppStrings.textGeneration,),
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
              const  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 CustomRowButton(icon: AppAssets.editIcon,
                 text: AppStrings.editTxt,),
                CustomRowButton(icon: AppAssets.copyIcon,
                 text: AppStrings.copy,),
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
                    AppStrings.aiTextGenraton,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.aiTextDescription,
                style: AppTextStyles.imgLableTxtStyle,
              ),
              const SizedBox(
                height: 20,
              ),
               const  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 CustomRowButton(icon: AppAssets.downloadIcon,
                 text: AppStrings.download,),
                 
                CustomRowButton(icon: AppAssets.shareIcon,
                 text: AppStrings.share,),
                  
                 CustomRowButton(icon: AppAssets.regenerateIcon,
                 text: AppStrings.regenerate,), 
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
              CustomFieldAndButton(
              icon: AppAssets.imageUploadIcon,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TextToImageScreen()));
              },
             ),
            ],
          ),
        ),
      ),
    );
  }
}
