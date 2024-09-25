import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CleverCreatorAiScreen extends StatefulWidget {
  const CleverCreatorAiScreen({super.key});

  @override
  State<CleverCreatorAiScreen> createState() => _CleverCreatorAiScreenState();
}



class _CleverCreatorAiScreenState extends State<CleverCreatorAiScreen> {
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar:  CustomAppBar(
        text: AppStrings.splashtxt
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          ],
        ),
      ),
    );
  }
}
