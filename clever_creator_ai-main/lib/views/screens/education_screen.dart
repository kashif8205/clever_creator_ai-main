import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: AppStrings.education),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.mathematics,style: AppTextStyles.secondaryTxtStyle,),
              SizedBox(height: 10,),
            CustomListTile(
              leadingIcon: AppAssets.questionIcon,
              titile: AppStrings.whatIsFormula,
            ),
            SizedBox(height: 10,),
            CustomListTile(
              leadingIcon: AppAssets.questionIcon,
              titile: AppStrings.whatIsFormula,
            ),
            SizedBox(height: 10,),
            CustomTextField(
              hintText: AppStrings.writePrompt,
              suffixIcon: AppAssets.searchIcon,
            ),
            SizedBox(height: 40,),
            Text(AppStrings.science,style: AppTextStyles.secondaryTxtStyle,),
             SizedBox(height: 10,),
            CustomListTile(
              leadingIcon: AppAssets.questionIcon,
              titile: AppStrings.whatForceCauses,
            ),
            SizedBox(height: 10,),
            CustomListTile(
              leadingIcon: AppAssets.questionIcon,
              titile: AppStrings.chemicalSymbolOfWater,
            ),
            SizedBox(height: 10,),
            CustomTextField(
              hintText: AppStrings.writePrompt,
              suffixIcon: AppAssets.searchIcon,
            ), 
            ],
          ),
        ),
    );
  }
}