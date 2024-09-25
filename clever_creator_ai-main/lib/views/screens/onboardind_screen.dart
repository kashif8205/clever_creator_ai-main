import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/models/page_view_model.dart';
import 'package:clever_creator_ai/widgets/custom_elbtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardOneScreen extends StatefulWidget {
  const OnboardOneScreen({super.key});

  @override
  State<OnboardOneScreen> createState() => _OnboardOneScreenState();
}

class _OnboardOneScreenState extends State<OnboardOneScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomElevatedBtn(
                elBtnTxt: AppStrings.skip,
                elevatedtBtnTxtStyle: AppTextStyles.skipEltBtnStyle,
                onPress: () => controller.jumpToPage(3),
                backgroundColor: AppColors.thirdClr,
                foregroundColor: AppColors.elTxtClr,
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() => isLastPage = index == 3);
                  },
                  children: [
                    buildPage(
                        image: AppAssets.aiLogo,
                        title: AppStrings.onBoardOneTxt),
                    buildPage(
                        image: AppAssets.aestronaut,
                        title: AppStrings.onBoardTwoTxt),
                    buildPage(
                        image: AppAssets.spoken,
                        title: AppStrings.onBoardThreeTxt),
                    buildPage(
                        image: AppAssets.animation,
                        title: AppStrings.onBoardFourTxt),
                  ],
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const WormEffect(
                      spacing: 10,
                      dotColor: AppColors.thirdClr,
                      activeDotColor: AppColors.fourthClr,
                      dotWidth: 5,
                      dotHeight: 5),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.easeIn),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: FloatingActionButton(
                  backgroundColor: AppColors.fourthClr,
                  onPressed: () => controller.nextPage(
                      duration: const Duration(microseconds: 500),
                      curve: Curves.easeInOut),
                  child: SvgPicture.asset(
                    AppAssets.fwdicon,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
