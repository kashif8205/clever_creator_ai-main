import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/manage_templates_screen.dart';
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
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.addCustom),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.basicInfo,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: AppStrings.category,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: AppStrings.enterIcon,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomDropdownButton(
                  items: ['Item 1', 'Item 3'],
                  hintText: AppStrings.selectCategory,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: AppStrings.description,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppStrings.inputInfo,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomDropdownButton(
                  items: ['Item 1', 'Item 3'],
                  hintText: AppStrings.inputField,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: AppStrings.inputName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: AppStrings.inputLabel,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppStrings.customPrompt,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: AppStrings.enterMsg,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                PrimaryBtn(
                  elBtnTxt: AppStrings.save,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ManageTemplatesScreen()));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
