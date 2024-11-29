
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomColumnAppBar extends StatelessWidget {
  const CustomColumnAppBar({
    super.key, this.text,
  });
final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: AppStrings.cleverTxt,
                    style: AppTextStyles.textSpanPartOneStyle),
                TextSpan(
                    text: AppStrings.ai, style: AppTextStyles.aiTxtStyle),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).maybePop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                    // constraints:
                    //     BoxConstraints(), // This removes the extra space around the icon
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
               Text(
                text?? '',
                style: AppTextStyles.screenSubTitleStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
