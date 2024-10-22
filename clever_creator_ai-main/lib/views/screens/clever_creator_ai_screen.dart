import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/models/creater_model.dart';
import 'package:clever_creator_ai/views/screens/ai_tutor_screen.dart';
import 'package:clever_creator_ai/views/screens/custom_template_screen.dart';
import 'package:clever_creator_ai/views/screens/document_summarization_screen.dart';
import 'package:clever_creator_ai/views/screens/ielts_screen.dart';
import 'package:clever_creator_ai/views/screens/prompt_generator_screen.dart';
import 'package:clever_creator_ai/views/screens/speech_to_text_screen.dart';
import 'package:clever_creator_ai/views/screens/text_generation_screen.dart';
import 'package:clever_creator_ai/views/screens/text_to_image_screen.dart';
import 'package:clever_creator_ai/views/screens/text_to_speech_screen.dart';
import 'package:clever_creator_ai/views/screens/text_to_video_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

List<CleverCreaterModel> aiItems = [
  CleverCreaterModel(
      image: AppAssets.textIcon,
      text: AppStrings.textGeneration,
      descriptionTxt: AppStrings.testGenDescription),
  CleverCreaterModel(
      image: AppAssets.textToImgIcon,
      text: AppStrings.textToImg,
      descriptionTxt: AppStrings.textToImgDes),
  CleverCreaterModel(
      image: AppAssets.aiTutorIcon,
      text: AppStrings.aiTutor,
      descriptionTxt: AppStrings.aiTutorDes),
  CleverCreaterModel(
      image: AppAssets.mikeIcon,
      text: AppStrings.speechTxt,
      descriptionTxt: AppStrings.speechTxtDes),
  CleverCreaterModel(
      image: AppAssets.earphone,
      text: AppStrings.textSpeech,
      descriptionTxt: AppStrings.textSpeechDes),
  CleverCreaterModel(
      image: AppAssets.templatesIcon,
      text: AppStrings.customTemplates,
      descriptionTxt: AppStrings.customTemplateDes),
  CleverCreaterModel(
      image: AppAssets.videoIcon,
      text: AppStrings.textToVideo,
      descriptionTxt: AppStrings.textToVideoDes),
  CleverCreaterModel(
      image: AppAssets.libraryIcon,
      text: AppStrings.promptLibrary,
      descriptionTxt: AppStrings.promptLibraryDes),
  CleverCreaterModel(
      image: AppAssets.cloudsIcon,
      text: AppStrings.promptCloud,
      descriptionTxt: AppStrings.promptCloudDes),
  CleverCreaterModel(
      image: AppAssets.submitDocIcon,
      text: AppStrings.docSummarize,
      descriptionTxt: AppStrings.docSummarizeDes)
];

class CleverCreatorAiScreen extends StatefulWidget {
  const CleverCreatorAiScreen({super.key});

  @override
  State<CleverCreatorAiScreen> createState() => _CleverCreatorAiScreenState();
}

class _CleverCreatorAiScreenState extends State<CleverCreatorAiScreen> {
  // Map of screens to navigate to
  final List<Widget> _screens = [
    const TextGenerationScreen(), // Index 0
    const TextToImageScreen(), // Index 1
    const AiTutorScreen(), // Index 2
    const SpeechToTextScreen(),
    const TextToSpeechScreen(),
    const CustomTemplateScreen(),
    const TextToVideoScreen(),
    const IeltsTestScreen(),
    const PromptGeneratorScreen(),
    const DocumentSummarizationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.appName,
        icon: AppAssets.bellIcon,
        style: AppTextStyles.subheadingStyle,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8),
                itemCount: aiItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = aiItems[index];
                  return InkWell(
                    onTap: () {
                      // Navigate to the corresponding screen based on the index
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => _screens[index],
                        ),
                      );
                    },
                    child: Card(
                      color: AppColors.textfieldClr,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: const BoxDecoration(
                                  color: AppColors.primaryclr,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              child: Image.asset(
                                item.image,
                              ),
                            ),
                            Text(
                              item.text,
                              style: AppTextStyles.cardTxtStyle,
                            ),
                            Text(
                              item.descriptionTxt,
                              style: AppTextStyles.cardDescStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
