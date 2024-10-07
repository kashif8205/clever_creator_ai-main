import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class CustomTemplateScreen extends StatefulWidget {
  const CustomTemplateScreen({super.key});

  @override
  State<CustomTemplateScreen> createState() => _CustomTemplateScreenState();
}

class _CustomTemplateScreenState extends State<CustomTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: AppStrings.customTemplate),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomDropdownButton(
              items: ['Item 1', 'Item 3'],
              hintText: AppStrings.categorize,
              leadingIcon: AppAssets.categoriesIcon,
             
            ),
             SizedBox(height: 10,),
             CustomDropdownButton(
              items: ['Item 1', 'Item 3'],
              hintText: AppStrings.addTemplate,
              leadingIcon: AppAssets.addIcon,
             
            ),
            SizedBox(height: 10,),
            CustomDropdownButton(
              items: ['Item 1', 'Item 3'],
              hintText: AppStrings.manageTemplate,
              leadingIcon: AppAssets.manageTempIcon,
             
            ),
          ],
        ),
      ),
    );
  }
}
