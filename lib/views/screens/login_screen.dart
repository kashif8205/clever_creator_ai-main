import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/app_utils/form_validation.dart';
import 'package:clever_creator_ai/provider/login_provider.dart';
import 'package:clever_creator_ai/views/screens/clever_creator_ai_screen.dart';
import 'package:clever_creator_ai/views/screens/create_account_screen.dart';
import 'package:clever_creator_ai/views/screens/forget_password_screen.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:flutter/material.dart';

// FormValidation formValidation = FormValidation();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController uNameController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
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
                          onPressed: () {
                            print("Google button pressed");
                          },
                        ),
                        CustomIconButton(
                          iconButton: AppAssets.facebook,
                          onPressed: () {
                            print("Facebook button pressed");
                          },
                        ),
                        CustomIconButton(
                          iconButton: AppAssets.apple,
                          onPressed: () {
                            print("Apple button pressed");
                          },
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
                    validator: FormValidation().validateEmail,
                    keyboardType: TextInputType.emailAddress,
                    controller: uNameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   CustomTextField(
                    prefixIcon: AppAssets.lock,
                    hintText: AppStrings.password,
                    // suffixIcon: CustomIconButton(iconButton: AppAssets.eye),
                    validator: FormValidation.validatePassword,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: pwdController
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen(),
                            ),
                          );
                        },
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
                         if(_formKey.currentState!.validate()){
                           Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CleverCreatorAiScreen(),
                            ),
                            (route) => false,
                          );
                         }
                        },
                        text: AppStrings.signIn,
                      ),
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
                              LoginProvider().login(uNameController.text, pwdController.text);
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateAccountScreen(),
                                ),
                                (route) => false,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
