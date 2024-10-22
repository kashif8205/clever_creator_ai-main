import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/upgrade_plan_screen.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:clever_creator_ai/widgets/custom_form_field.dart';
import 'package:clever_creator_ai/widgets/textspan_app_bar.dart';
import 'package:flutter/material.dart';

class StatsSubscriptionScreen extends StatefulWidget {
  const StatsSubscriptionScreen({super.key});

  @override
  State<StatsSubscriptionScreen> createState() =>
      _StatsSubscriptionScreenState();
}

class _StatsSubscriptionScreenState extends State<StatsSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title:const CustomColumnAppBar(
          text: AppStrings.stats$Subscription,
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                AppStrings.token,
                style: AppTextStyles.secondaryTxtStyle,
              ),
             const SizedBox(
                height: 20,
              ),
             const CustomFormField(
                prefixText: AppStrings.totalTokenUsed,
                keyboardType: TextInputType.number,
              ),
             const SizedBox(
                height: 20,
              ),
             const CustomFormField(
                prefixText: AppStrings.tokenLeft,
                keyboardType: TextInputType.number,
              ),
             const SizedBox(
                height: 20,
              ),
             const CustomFormField(
                prefixText: AppStrings.totalWordsGenerated,
                keyboardType: TextInputType.number,
              ),
             const SizedBox(
                height: 20,
              ),
             const Text(
                AppStrings.credit,
                style: AppTextStyles.secondaryTxtStyle,
              ),
             const SizedBox(
                height: 20,
              ),
             const CustomFormField(
                prefixText: AppStrings.totalCreditUsed,
                keyboardType: TextInputType.number,
              ),
             const SizedBox(
                height: 20,
              ),
            const  CustomFormField(
                prefixText: AppStrings.creditLeft,
                keyboardType: TextInputType.number,
              ),
             const SizedBox(
                height: 20,
              ),
             const CustomFormField(
                prefixText: AppStrings.totalImgGenrated,
                keyboardType: TextInputType.number,
              ),
            const  SizedBox(
                height: 20,
              ),
            const  Text(
                AppStrings.subscription,
                style: AppTextStyles.secondaryTxtStyle,
              ),
             const SizedBox(
                height: 20,
              ),
             const CustomFormField(
                prefixText: AppStrings.crntSubscripPlan,
                keyboardType: TextInputType.text,
              ),
             const SizedBox(
                height: 20,
              ),
            const  CustomFormField(
                prefixText: AppStrings.resetDate,
                keyboardType: TextInputType.datetime,
              ),
            const  SizedBox(
                height: 20,
              ),
              PrimaryBtn(
                elBtnTxt: AppStrings.upgradePlan,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UpgradePlanScreen()));
                },
                )
            ],
          ),
        ),
      ),
    );
  }
}
