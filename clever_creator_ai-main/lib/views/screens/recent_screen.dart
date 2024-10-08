import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: AppStrings.recent),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.textGeneration,style: AppTextStyles.secondaryTxtStyle,),
              SizedBox(height: 10,),
              CustomTextField(
               hintText: AppStrings.pleaseWriteLetter,
              ),
              SizedBox(height: 10,),
              CustomTextField(
               hintText: AppStrings.pleaseWriteLetter,
              ),
              SizedBox(height: 10,),
              CustomTextField(
               hintText: AppStrings.pleaseWriteLetter,
              ),
              SizedBox(height: 40,),
              Text(AppStrings.textToImage,style: AppTextStyles.secondaryTxtStyle,),
              SizedBox(height: 10,),
              CustomTextField(
               hintText: AppStrings.pleaseWriteLetter,
              ),
              SizedBox(height: 10,),
              CustomTextField(
               hintText: AppStrings.pleaseWriteLetter,
              ),
              SizedBox(height: 10,),
              CustomTextField(
               hintText: AppStrings.pleaseWriteLetter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}