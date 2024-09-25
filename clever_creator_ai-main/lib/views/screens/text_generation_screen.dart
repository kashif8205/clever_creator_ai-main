import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/models/mastermind_model.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextGenerationScreen extends StatefulWidget {
  const TextGenerationScreen({super.key});

  @override
  State<TextGenerationScreen> createState() => _TextGenerationScreenState();
}

List<MastermindModel> gridItems = [
  MastermindModel(image: AppAssets.pythonIcon, label: AppStrings.python),
  MastermindModel(image: AppAssets.resumeIcon, label: AppStrings.resume),
  MastermindModel(image: AppAssets.financeIcon, label: AppStrings.financeExpert),
  MastermindModel(image: AppAssets.webIcon, label: AppStrings.webDeveloper),
  MastermindModel(image: AppAssets.travelIcon, label: AppStrings.travelGuide),
  MastermindModel(image: AppAssets.totorIcon, label: AppStrings.language),
  MastermindModel(image: AppAssets.seoIcon, label: AppStrings.seoExpert),
  MastermindModel(image: AppAssets.interDesignIcon, label: AppStrings.interiorDesign),
  MastermindModel(image: AppAssets.marketGoalIcon, label: AppStrings.marketingGenius),
  MastermindModel(image: AppAssets.startUpIcon, label: AppStrings.startupBusiness),
  MastermindModel(image: AppAssets.cyberSecurityIcon, label: AppStrings.cyberSecurity),
  MastermindModel(image: AppAssets.careerConsultantIcon, label: AppStrings.careerConsultant),
  MastermindModel(image: AppAssets.accountantIcon, label: AppStrings.acountExpert),
  MastermindModel(image: AppAssets.financeSpecialistIcon, label: AppStrings.financeSpecialist),
  MastermindModel(image: AppAssets.fitnessTrainerIcon, label: AppStrings.fitnessTrainer),
  MastermindModel(image: AppAssets.aiCodeIcon, label: AppStrings.aiCodeHelper),
];

class _TextGenerationScreenState extends State<TextGenerationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.textGeneration,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              prefixIconConstraints:
                  const BoxConstraints(minHeight: 15, minWidth: 20),
              prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image.asset(AppAssets.botIcon)),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.chatBot,
              textStyle: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              prefixIconConstraints:
                  const BoxConstraints(minHeight: 15, minWidth: 20),
              prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image.asset(AppAssets.ieltsIcon)),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.ieltsTest,
              textStyle: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.aiMasterMind,
              style: AppTextStyles.aiMasterMindTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                ),
                itemCount: gridItems.length, 
                itemBuilder: (BuildContext context, int index) {
                  final item = gridItems[index]; 
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          item.image, 
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item.label, 
                          style: AppTextStyles.primaryTxtStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
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
