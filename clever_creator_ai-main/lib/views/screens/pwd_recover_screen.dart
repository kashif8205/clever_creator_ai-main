import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                  AppStrings.forgetScreenTitle,
                  style: AppTextStyles.screenTitleStyle,
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
                    child: SvgPicture.asset(AppAssets.mailbox),
                  ),
                  hintText: AppStrings.enterEmail,
                  textStyle: AppTextStyles.secondaryTxtStyle,
                  
                ),
               const SizedBox(height: 10,),
              const  Text(AppStrings.emailBelowTxt, style:AppTextStyles.secondaryTxtStyle),
             const   SizedBox(height: 70),
                CustomRowWidget(
                  onPressed: () {},
                  btnText: AppStrings.sendCode,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
