import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_drop_down.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class AddCustomScreen extends StatefulWidget {
  const AddCustomScreen({super.key});

  @override
  State<AddCustomScreen> createState() => _AddCustomScreenState();
}

class _AddCustomScreenState extends State<AddCustomScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: AppStrings.customCategories),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.basicInfo,
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
                height: 10,
              ),
              CustomDropdownButton(
                items: ['Item 1', 'Item 3'],
                hintText: AppStrings.selectCategory,
                textStyle: AppTextStyles.secondaryTxtStyle,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: AppStrings.description,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.inputInfo,
                style: AppTextStyles.primaryTxtStyle,
              ),
              SizedBox(
                height: 10,
              ),
              CustomDropdownButton(
                items: ['Item 1', 'Item 3'],
                hintText: AppStrings.inputField,
                textStyle: AppTextStyles.secondaryTxtStyle,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: AppStrings.inputName,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: AppStrings.inputLabel,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.customPrompt,
                style: AppTextStyles.primaryTxtStyle,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: AppStrings.enterMsg,
              ),
              SizedBox(
                height: 50,
              ),
              PrimaryBtn(elBtnTxt: AppStrings.save),
            ],
          ),
        ),
      ),
    );
  }
}
