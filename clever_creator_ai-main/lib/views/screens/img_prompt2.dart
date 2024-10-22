import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/document_summarization_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';

class ImgPrompt2Screen extends StatefulWidget {
  const ImgPrompt2Screen({super.key});

  @override
  State<ImgPrompt2Screen> createState() => _ImgPrompt2ScreenState();
}

class _ImgPrompt2ScreenState extends State<ImgPrompt2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.imagePromptGenerator,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppStrings.imgLableTxt,
              style: AppTextStyles.imgLableTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DocumentSummarizationScreen()));
                },
                child: Image.asset(AppAssets.babyImg)),
            const SizedBox(
              height: 20,
            ),
          const  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               CustomRowButton(icon: AppAssets.downloadIcon,
               text: AppStrings.download,),
                //  SizedBox(
                //   width: 20,
                // ),
              CustomRowButton(icon: AppAssets.shareIcon,
               text: AppStrings.share,),
                //  SizedBox(
                //   width: 20,
                // ),
               CustomRowButton(icon: AppAssets.regenerateIcon,
               text: AppStrings.regenerate,), 
              ],
            ),
            const SizedBox(
              height: 10,
            ),
           const Row(
              children: [
                CustomRowButton(icon: AppAssets.editIcon,
               text: AppStrings.edit,),
                 SizedBox(
                  width: 20,
                ),
                CustomRowButton(icon: AppAssets.likeIcon,
               text: AppStrings.like,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
