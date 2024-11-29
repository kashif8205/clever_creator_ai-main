import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class IeltsTestScreen extends StatefulWidget {
  const IeltsTestScreen({super.key});

  @override
  State<IeltsTestScreen> createState() => _IeltsTestScreenState();
}

class _IeltsTestScreenState extends State<IeltsTestScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:   CustomAppBar(
        text: AppStrings.ieltsTest,
        icon: AppAssets.share,
      ),
      body: Padding(
        padding:   EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
           CustomDropdownButton(
            items: ["1"], 
            hintText: AppStrings.presetQuestions),
            SizedBox(height: 10,),
           CustomDropdownButton(
            items: ["2"], 
            hintText: AppStrings.createQuestions)
          ],
        ),
      ),
    );
  }
}
