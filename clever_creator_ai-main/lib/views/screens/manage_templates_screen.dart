import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class ManageTemplatesScreen extends StatefulWidget {
  const ManageTemplatesScreen({super.key});

  @override
  State<ManageTemplatesScreen> createState() => _ManageTemplatesScreenState();
}

class _ManageTemplatesScreenState extends State<ManageTemplatesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: AppStrings.manageTemplate),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.template,
              style: AppTextStyles.primaryTxtStyle,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: AppStrings.searchOrderId,
              suffixIcon: AppAssets.searchIcon,
            ),
            SizedBox(
              height: 30,
            ),
            CustomElevatedBtn(elBtnTxt: AppStrings.search),
            SizedBox(
              height: 30,
            ),
            Text(
              AppStrings.allTemplates,
              style: AppTextStyles.primaryTxtStyle,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: AppStrings.template,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: AppStrings.cleverCreater,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: AppStrings.cleverAiImage,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: AppStrings.createrAiContentFree,
            ),
          ],
        ),
      ),
    );
  }
}
