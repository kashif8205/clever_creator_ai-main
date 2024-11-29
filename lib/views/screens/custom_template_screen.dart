import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/views/screens/custom_categories_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_drop_down.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class CustomTemplateScreen extends StatefulWidget {
  const CustomTemplateScreen({super.key});

  @override
  State<CustomTemplateScreen> createState() => _CustomTemplateScreenState();
}

class _CustomTemplateScreenState extends State<CustomTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.customTemplate),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomDropdownButton(
              items: ['Item 1', 'Item 3'],
              hintText: AppStrings.categorize,
              leadingIcon: AppAssets.categoriesIcon,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDropdownButton(
              items: ['Item 1', 'Item 3'],
              hintText: AppStrings.addTemplate,
              leadingIcon: AppAssets.addIcon,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDropdownButton(
              items: ['Item 1', 'Item 3'],
              hintText: AppStrings.manageTemplate,
              leadingIcon: AppAssets.manageTempIcon,
            ),
            const SizedBox(
              height: 50,
            ),
            PrimaryBtn(
              elBtnTxt: AppStrings.next,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomCategoriesScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
