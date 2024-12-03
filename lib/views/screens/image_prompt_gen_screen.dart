import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/app_utils/form_validation.dart';
import 'package:clever_creator_ai/views/screens/img_prompt2.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_drop_down.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class ImagePromptGenScreen extends StatefulWidget {
  const ImagePromptGenScreen({super.key});

  @override
  State<ImagePromptGenScreen> createState() => _ImagePromptGenScreenState();
}

class _ImagePromptGenScreenState extends State<ImagePromptGenScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.imagePromptGenerator,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.selectGptModel,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomDropdownButton(
                  items: ["item 1", "Item 2"],
                  hintText: AppStrings.selectModel,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  AppStrings.selectLanguage,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomDropdownButton(
                  items: ["item 1", "Item 2"],
                  hintText: AppStrings.english,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  AppStrings.imgTypeYouWant,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextField(
                    hintText: AppStrings.desOfImgTypeYouWant,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  AppStrings.desOfImg,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextField(
                    hintText: AppStrings.hintTxtOfdesOfImg,
                    keyboardType: TextInputType.text,
                    validator: FormValidation.validateField),
                const SizedBox(
                  height: 50,
                ),
                PrimaryBtn(
                  eltBtnSize: const Size(double.infinity, 58),
                  backgroundColor: AppColors.blueClr,
                  foregroundColor: AppColors.secondryClr,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ImgPrompt2Screen()));
                    }
                  },
                  elBtnTxt: AppStrings.generateBtn,
                  elevatedtBtnTxtStyle: AppTextStyles.eltBtnTxtStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
