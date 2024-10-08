import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_form_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: AppStrings.cleverTxt,
                    style: AppTextStyles.textSpanPartOneStyle),
                TextSpan(text: AppStrings.ai, style: AppTextStyles.aiTxtStyle),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    AppStrings.profile,
                    style: AppTextStyles.cardTxtStyle,
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  CustomIconButton(
                    iconButton: AppAssets.menuIcon,
                    onPressed: () {
                      // print("object");
                    },
                  )
                ],
              ),
              Center(
                child: Image.asset(
                  AppAssets.profileIcon,
                  height: 111,
                  width: 96,
                ),
              ),
              const Center(
                child: Text(
                  AppStrings.profileName,
                  style: AppTextStyles.signInTxtStyle,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomFormField(
                prefixText: AppStrings.email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
               CustomFormField(
                prefixText: AppStrings.phone,
                keyboardType: TextInputType.number,
                onPressed: () {
                  print("hello");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                prefixText: AppStrings.age,
                keyboardType: TextInputType.numberWithOptions(),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                prefixText: AppStrings.changePassword,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                prefixText: AppStrings.stats$Subscription,
                keyboardType: TextInputType.visiblePassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
