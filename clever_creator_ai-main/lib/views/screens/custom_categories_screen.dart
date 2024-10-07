import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class CustomCategoriesScreen extends StatefulWidget {
  const CustomCategoriesScreen({super.key});

  @override
  State<CustomCategoriesScreen> createState() => _CustomCategoriesScreenState();
}

class _CustomCategoriesScreenState extends State<CustomCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: AppStrings.customCategories),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.categoryAdd,
              style: AppTextStyles.primaryTxtStyle,
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextField(
              hintText: AppStrings.category,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: AppStrings.enterIcon,
            ),
            SizedBox(
              height: 50,
            ),
            CustomElevatedBtn(elBtnTxt: AppStrings.save),
          ],
        ),
      ),
    );
  }
}
