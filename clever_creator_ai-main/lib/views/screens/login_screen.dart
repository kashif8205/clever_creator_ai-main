import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/create_account_screen.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          iconButton: AppAssets.bwdicon,
          onPressed: () {
            Navigator.of(context).maybePop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppStrings.loginTxt,
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
                  CustomTextField(
                    prefixIcon: AppAssets.user,
                    hintText: AppStrings.userName,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings.requiredField;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    prefixIcon: AppAssets.lock,
                    hintText: AppStrings.password,
                    suffixIcon: AppAssets.eye,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings.requiredField;
                      }
                      if (value.length != 8) {
                        return AppStrings.pwdLimit;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        onPressed: () {},
                        text: AppStrings.forgetBtnTxt,
                        textStyle: AppTextStyles.forgetBtnTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateAccountScreen()));
                          },
                          text: AppStrings.singIn),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.blueClr,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: CustomIconButton(
                          iconButton: AppAssets.arrow,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateAccountScreen()));
                            }
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
      ),
    );
  }
}
