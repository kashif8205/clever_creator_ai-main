import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePromptGenScreen extends StatefulWidget {
  const ImagePromptGenScreen({super.key});

  @override
  State<ImagePromptGenScreen> createState() => _ImagePromptGenScreenState();
}

class _ImagePromptGenScreenState extends State<ImagePromptGenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.promptGenerator,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppStrings.selectGptModel,
              style: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.selectModel,
              textStyle: AppTextStyles.secondaryTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.selectLanguage,
              style: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.english,
              textStyle: AppTextStyles.secondaryTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.imgTypeYouWant,
              style: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.desOfImgTypeYouWant,
              textStyle: AppTextStyles.secondaryTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.desOfImg,
              style: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 5, minWidth: 5),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      AppAssets.fwdicon,
                    )),
              ),
              hintText: AppStrings.hintTxtOfdesOfImg,
              textStyle: AppTextStyles.secondaryTxtStyle,
            ),
            const SizedBox(height: 50,),
           CustomElevatedBtn(
            backgroundColor: AppColors.fourthClr, 
            foregroundColor: AppColors.secondryClr, 
            onPress: (){},
             elBtnTxt: AppStrings.generateBtn,
              elevatedtBtnTxtStyle: AppTextStyles.eltBtnTxtStyle)
          ],
        ),
      ),
    );
  }
}
