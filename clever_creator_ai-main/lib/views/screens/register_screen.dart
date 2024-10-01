import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/pwd_recover_screen.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: CustomIconButton(
        iconButton: AppAssets.bwdicon,
        onPressed: () {
          Navigator.of(context).maybePop();
        },
      )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.createAccText,
                  style: AppTextStyles.screenTitleStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    AppStrings.signtxt,
                    style: AppTextStyles.secondaryTxtStyle,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        iconButton: AppAssets.google,
                        onPressed: () {},
                      ),
                      CustomIconButton(
                        iconButton: AppAssets.facebook,
                        onPressed: () {},
                      ),
                      CustomIconButton(
                        iconButton: AppAssets.apple,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    AppStrings.or,
                    style: AppTextStyles.secondaryTxtStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  prefixIcon: AppAssets.user,
                  hintText: AppStrings.userName,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  prefixIcon: AppAssets.lock,
                  hintText: AppStrings.password,
                  suffixIcon: AppAssets.eye,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  prefixIcon: AppAssets.lock,
                  hintText: AppStrings.confPwd,
                  suffixIcon: AppAssets.eye,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(AppStrings.conPwdExp,
                    style: AppTextStyles.secondaryTxtStyle),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                        onPressed: () {
                        },
                        text: AppStrings.register),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.fourthClr,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: CustomIconButton(
                        iconButton: AppAssets.arrow,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPasswordScreen()));
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
