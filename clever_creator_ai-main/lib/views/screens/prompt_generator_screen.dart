import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class PromptGeneratorScreen extends StatefulWidget {
  const PromptGeneratorScreen({super.key});

  @override
  State<PromptGeneratorScreen> createState() => _PromptGeneratorScreenState();
}

class _PromptGeneratorScreenState extends State<PromptGeneratorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: AppStrings.promptGenerator,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomDropdownButton(
              items: ["item 1", "Item 2"],
              leadingIcon: AppAssets.imagePg,
              hintText: AppStrings.imagePromptGenerator,
            ),
            SizedBox(
              height: 10,
            ),
            CustomDropdownButton(
              items: ["item 1", "Item 2"],
              leadingIcon: AppAssets.contentPg,
              hintText: AppStrings.contentPromptgenTxt,
            ),
          ],
        ),
      ),
    );
  }
}
