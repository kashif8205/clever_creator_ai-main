import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
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
        toolbarHeight: 100,
        title:const CustomColumnAppBar(
          text: AppStrings.stats$Subscription,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.token,
                style: AppTextStyles.secondaryTxtStyle,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.totalTokenUsed,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.tokenLeft,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.totalWordsGenerated,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.credit,
                style: AppTextStyles.secondaryTxtStyle,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.totalCreditUsed,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.creditLeft,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.totalImgGenrated,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.subscription,
                style: AppTextStyles.secondaryTxtStyle,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.crntSubscripPlan,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                prefixText: AppStrings.resetDate,
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(
                height: 20,
              ),
              PrimaryBtn(elBtnTxt: AppStrings.upgradePlan)
            ],
          ),
        ),
      ),
    );
  }
}
