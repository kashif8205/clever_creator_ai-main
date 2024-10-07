import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class ImageGenerationScreen extends StatefulWidget {
  const ImageGenerationScreen({super.key});

  @override
  State<ImageGenerationScreen> createState() => _ImageGenerationScreenState();
}

class _ImageGenerationScreenState extends State<ImageGenerationScreen> {
  bool _isExpanded  = false;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:const
       CustomAppBar(text: AppStrings.imageGenerator),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: Column(
          children: [
           const CustomTextField(
              hintText: AppStrings.clickToUploadImg,
              suffixIcon: AppAssets.imageUploadIcon,
            ),
          const  SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExpansionTile(
                    collapsedBackgroundColor: AppColors.menuBackgroundClr, // Optional: Change collapsed color for better visibility
                    // Optional: Adjust text color if necessary
                    iconColor: Colors.white,
                    showTrailingIcon: false,
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        _isExpanded = expanded;
                      });
                    },
                    trailing: null,
                    title: Container(
                      height: 43,
                      width: 313,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                       color: AppColors.textfieldClr,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(AppStrings.studentType,
                              style: AppTextStyles
                                  .primaryTxtStyle), // Change text color to white
                          // Custom expansion icon inside the border
                          Icon(
                            _isExpanded
                                ? Icons.expand_less // Icon when expanded
                                : Icons.expand_more, // Icon when collapsed
                            color: Colors.white, // Change icon color to white
                          ),
                        ],
                      ),
                    ),
                    tilePadding: EdgeInsets.zero,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          // Enable horizontal scrolling
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 43,
                                width: 89,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  AppStrings.school,
                                  style: AppTextStyles.skipEltBtnStyle,
                                )),
                              ),
                              const SizedBox(
                                  width: 10), // Add spacing between containers
                              Container(
                                height: 43,
                                width: 89,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  AppStrings.college,
                                  style: AppTextStyles.skipEltBtnStyle,
                                )),
                              ),
                              const SizedBox(
                                  width: 10), // Add spacing between containers
                              Container(
                                height: 43,
                                width: 89,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  AppStrings.university,
                                  style: AppTextStyles.skipEltBtnStyle,
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}