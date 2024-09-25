import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/register_screen.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_row.dart';
import 'package:clever_creator_ai/widgets/custom_row_widget.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AppAssets.bwdicon),
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
                const CustomIconRow(),
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
                  prefixIconConstraints:
                      const BoxConstraints(minHeight: 15, minWidth: 20),
                  prefixIcon: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: SvgPicture.asset(AppAssets.user),
                  ),
                  hintText: AppStrings.userName,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  prefixIconConstraints:
                      const BoxConstraints(minHeight: 20, minWidth: 20),
                  suffixIconConstraints:
                      const BoxConstraints(minHeight: 20, minWidth: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(AppAssets.lock),
                  ),
                  hintText: AppStrings.password,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      AppAssets.eye,
                    ),
                  ),
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
                CustomRowWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  btnText: AppStrings.singIn,
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
