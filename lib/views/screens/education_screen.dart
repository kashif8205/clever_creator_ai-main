import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/app_utils/form_validation.dart';
import 'package:clever_creator_ai/views/screens/recent_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.education),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.mathematics,
                  style: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomListTile(
                  leadingIcon: AppAssets.questionIcon,
                  title: AppStrings.whatIsFormula,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomListTile(
                  leadingIcon: AppAssets.questionIcon,
                  title: AppStrings.whatIsFormula,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    hintText: AppStrings.writePrompt,
                    suffixIcon: CustomIconButton(
                        onPressed: () {
                          print("hello");
                        },
                        iconButton: AppAssets.searchIcon),
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  AppStrings.science,
                  style: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomListTile(
                  leadingIcon: AppAssets.questionIcon,
                  title: AppStrings.whatForceCauses,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomListTile(
                  leadingIcon: AppAssets.questionIcon,
                  title: AppStrings.chemicalSymbolOfWater,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    hintText: AppStrings.writePrompt,
                    suffixIcon: CustomIconButton(
                        onPressed: () {
                          print("hi");
                        },
                        iconButton: AppAssets.searchIcon),
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 40,
                ),
                PrimaryBtn(
                  elBtnTxt: AppStrings.next,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RecentScreen()));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
