import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocumentSummarizationScreen extends StatefulWidget {
  const DocumentSummarizationScreen({super.key});

  @override
  State<DocumentSummarizationScreen> createState() => _DocumentSummarizationScreenState();
}

class _DocumentSummarizationScreenState extends State<DocumentSummarizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.documentSummarize,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.containerBGClr,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppAssets.uploadIcon),
                      const Text(
                        AppStrings.uploadPDfTxt,
                        style: AppTextStyles.secondaryTxtStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomElevatedBtn(
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
