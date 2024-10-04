import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/text_generation_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_container.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:flutter/material.dart';

class DocumentSummarizationScreen extends StatefulWidget {
  const DocumentSummarizationScreen({super.key});

  @override
  State<DocumentSummarizationScreen> createState() =>
      _DocumentSummarizationScreenState();
}

class _DocumentSummarizationScreenState
    extends State<DocumentSummarizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.documentSummarize,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         const  CustomUploadContainer(
          text: AppStrings.uploadPDfTxt,
         ),
            const SizedBox(height: 30),
            CustomElevatedBtn(
              eltBtnSize: const Size(double.infinity, 58),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextGenerationScreen()));
              },
              backgroundColor: Colors.blue,
              elBtnTxt: AppStrings.submit,
              elevatedtBtnTxtStyle: AppTextStyles.eltBtnTxtStyle,
            ),
          ],
        ),
      ),
    );
  }
}
