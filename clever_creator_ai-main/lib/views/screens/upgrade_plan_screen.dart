import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/widgets/textspan_app_bar.dart';
import 'package:flutter/material.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 100,
         title:const CustomColumnAppBar(
          text: AppStrings.upgradePlan,
         ),
      ),
    );
  }
}