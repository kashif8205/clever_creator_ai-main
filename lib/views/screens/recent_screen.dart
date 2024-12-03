import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/app_utils/form_validation.dart';
import 'package:clever_creator_ai/views/screens/profile_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.recent),
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
                  AppStrings.textGeneration,
                  style: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    hintText: AppStrings.pleaseWriteLetter,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    hintText: AppStrings.pleaseWriteLetter,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    hintText: AppStrings.pleaseWriteLetter,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  AppStrings.textToImage,
                  style: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    hintText: AppStrings.pleaseWriteLetter,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    hintText: AppStrings.pleaseWriteLetter,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    hintText: AppStrings.pleaseWriteLetter,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 50,
                ),
                PrimaryBtn(
                  elBtnTxt: AppStrings.next,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen()));
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
