import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/views/screens/image_prompt_gen_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomListTile(
              leadingIcon: AppAssets.imagePg,
              titile: AppStrings.promptGenerator,
              trailingIcon: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImagePromptGenScreen()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomListTile(
              leadingIcon: AppAssets.contentPg,
              titile: AppStrings.contentPromptgenTxt,
              trailingIcon: Icons.arrow_forward_ios_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
