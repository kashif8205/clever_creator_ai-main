import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/image_gen2_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:clever_creator_ai/widgets/custom_icon_button.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:clever_creator_ai/widgets/secondart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageGenerationScreen extends StatefulWidget {
  const ImageGenerationScreen({super.key});

  @override
  State<ImageGenerationScreen> createState() => _ImageGenerationScreenState();
}

class _ImageGenerationScreenState extends State<ImageGenerationScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isDropdownOpen = false;
  // bool _istapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.imageGenerator),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.wrtPrompt,
                  style: AppTextStyles.primaryTxtStyle,
                ),
                const SizedBox(height: 10),
                 CustomTextField(
                  hintText: AppStrings.clickToUploadImg,
                  suffixIcon: const CustomIconButton(iconButton: AppAssets.imageUploadIcon),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return AppStrings.requiredField;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SecondaryBtn(
                      text: AppStrings.xdl,
                    ),
                    const SecondaryBtn(
                      text: AppStrings.dal,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDropdownOpen = !_isDropdownOpen;
                        });
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.blueClr, width: 2),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(AppStrings.advance,
                                style: AppTextStyles.ddTxtStyle),
                            const SizedBox(width: 10),
                            SvgPicture.asset(_isDropdownOpen
                                ? AppAssets.dropDownIcon
                                : AppAssets.dropDownIcon),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                if (_isDropdownOpen)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 110,
                        height: 125,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.blueClr, width: 2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildLabeledTextField(
                                AppStrings.imgQuality, AppStrings.enter, 90, 30),
                            const SizedBox(height: 5),
                            buildLabeledTextField(
                                AppStrings.imgResolution, AppStrings.enter, 90, 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(height: 20,),
                  PrimaryBtn(
                    elBtnTxt: AppStrings.generateBtn,
                    onPressed: () {
                    if(_formKey.currentState!.validate()){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageGen2Screen()));
                    }
                    },
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}









Widget buildLabeledTextField(
    String label, String hintText, double width, double height) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 5),
      SizedBox(
        width: width,
        height: height,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                const TextStyle(color: AppColors.secondryClr, fontSize: 10),
            filled: true,
            fillColor: Colors.black,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.secondryClr),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.secondryClr),
            ),
          ),
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    ],
  );
}
