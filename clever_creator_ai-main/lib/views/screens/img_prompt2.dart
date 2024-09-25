import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImgPrompt2Screen extends StatefulWidget {
  const ImgPrompt2Screen({super.key});

  @override
  State<ImgPrompt2Screen> createState() => _ImgPrompt2ScreenState();
}

class _ImgPrompt2ScreenState extends State<ImgPrompt2Screen> {
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
              AppStrings.imgLableTxt,
              style: AppTextStyles.imgLableTxtStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(AppAssets.babyImg),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowIcon(
                  icon: SvgPicture.asset(AppAssets.downloadIcon),
                  iconTxt: AppStrings.download,
                ),
              const  SizedBox(width: 20,),
                RowIcon(
                  icon: SvgPicture.asset(AppAssets.shareIcon),
                  iconTxt: AppStrings.share,
                ),
                const  SizedBox(width: 20,),
                 RowIcon(
                  icon: SvgPicture.asset(AppAssets.regenerateIcon),
                  iconTxt: AppStrings.regenerate,
                ),
              ],
            ),
           const SizedBox(height: 20,),
            Row(
              children: [
                RowIcon(
                  icon: SvgPicture.asset(AppAssets.editIcon),
                   iconTxt: AppStrings.edit),
                    const  SizedBox(width: 20,),
                RowIcon(
                  icon: SvgPicture.asset(AppAssets.likeIcon),
                   iconTxt: AppStrings.like),
              ],
            )
          ],
        ),
      ),
    );
  }
}
