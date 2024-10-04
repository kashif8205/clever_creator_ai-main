import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/text_generation_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_container.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:clever_creator_ai/widgets/custom_voice_container.dart';
import 'package:flutter/material.dart';

class AddnewScreen extends StatefulWidget {
  const AddnewScreen({super.key});

  @override
  State<AddnewScreen> createState() => _AddnewScreenState();
}

class _AddnewScreenState extends State<AddnewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.addnew,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                CustomUploadContainer(
                onPressed: () {
                  print("hello");
                },
                  text: AppStrings.supportMp3Txt,
                ),
                Positioned(bottom: -28, child: VoiceRecoderContainer(
                  onPressed: () {
                    print("Hello");
                  },
                )),
              ],
            ),
            const SizedBox(height: 50),
            const Center(
                child: Text(
              AppStrings.orByTxt,
              style: AppTextStyles.imgLableTxtStyle,
            )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.textfieldClr,
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                  textAlign: TextAlign.start,
                  AppStrings.createCarTxt,
                  style: AppTextStyles.primaryTxtStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomElevatedBtn(
              eltBtnSize: const Size(double.infinity, 58),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextGenerationScreen()));
              },
              backgroundColor: AppColors.fourthClr,
              elBtnTxt: AppStrings.generateBtn,
              elevatedtBtnTxtStyle: AppTextStyles.eltBtnTxtStyle,
            ),
          ],
        ),
      ),
    );
  }
}
