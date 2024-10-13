import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({super.key});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: AppStrings.imageGenerator),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppStrings.wrtPrompt,
              style: AppTextStyles.primaryTxtStyle,
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: AppStrings.clickToUploadImg,
              suffixIcon: AppAssets.imageUploadIcon,
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    buttonStyleData: ButtonStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blueGrey[700],
                      ),
                      elevation: 2,
                    ),
                    dropdownStyleData:const DropdownStyleData(
                      width: 110, // Set the width of the dropdown content
                      maxHeight:
                          150, // Set a max height to prevent overflow (with scrolling)
                      padding:  EdgeInsets.all(
                          0), // Remove padding for precise control
                      offset:  Offset(
                          0, 10), // Add 10 pixels of space from the button
                    ),
                    value: 'Advance',
                    items: [
                      DropdownMenuItem(
                        value: 'Advance',
                        child: Container(
                          width: 110, // Set width to 110
                          height: 105, // Set height to 105 to avoid overflow
                          child: Column(
                            children: [
                              SizedBox(
                                width: 79,
                                height: 25,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height: 10), // For spacing between fields
                              SizedBox(
                                width: 79,
                                height: 25,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown change
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
