import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/views/screens/ai_tutor_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class IeltsTestScreen extends StatefulWidget {
  const IeltsTestScreen({super.key});

  @override
  State<IeltsTestScreen> createState() => _IeltsTestScreenState();
}

class _IeltsTestScreenState extends State<IeltsTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const CustomAppBar(
        text: AppStrings.ieltsTest,
        icon: AppAssets.share,
      ),
      body: Padding(
        padding:  const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AiTutorScreen()));
            },
            child: const CustomListTile(
              titile: AppStrings.presetQuestions,
            ),
          ),
           const SizedBox(height: 10,),
           const CustomListTile(
            titile: AppStrings.createQuestions,
          )
          ],
        ),
      ),
    );
  }
}
