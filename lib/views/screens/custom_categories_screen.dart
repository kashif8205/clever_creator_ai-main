import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/app_utils/form_validation.dart';
import 'package:clever_creator_ai/views/screens/add_custom_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class CustomCategoriesScreen extends StatefulWidget {
  const CustomCategoriesScreen({super.key});

  @override
  State<CustomCategoriesScreen> createState() => _CustomCategoriesScreenState();
}

class _CustomCategoriesScreenState extends State<CustomCategoriesScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.customCategories),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.categoryAdd,
                style: AppTextStyles.primaryTxtStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                  hintText: AppStrings.category,
                  keyboardType: TextInputType.text,
                  validator: FormValidation.validateField),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  hintText: AppStrings.enterIcon,
                  keyboardType: TextInputType.text,
                  validator: FormValidation.validateField),
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
                            builder: (context) => const AddCustomScreen()));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
