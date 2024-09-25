import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromptGeneratorScreen extends StatefulWidget {
  const PromptGeneratorScreen({super.key});

  @override
  State<PromptGeneratorScreen> createState() => _PromptGeneratorScreenState();
}

class _PromptGeneratorScreenState extends State<PromptGeneratorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.promptGenerator,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              prefixIconConstraints:
                  const BoxConstraints(minHeight: 15, minWidth: 20),
              prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image.asset(AppAssets.imagePg)),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.imagePromptGenerator,
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
                  child: Image.asset(AppAssets.contentPg)),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.contentPromptgenTxt,
              textStyle: AppTextStyles.primaryTxtStyle,
            ),
          ],
        ),
      ),
    );
  }
}
