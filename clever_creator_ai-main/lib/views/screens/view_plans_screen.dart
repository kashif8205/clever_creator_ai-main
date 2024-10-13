import 'package:flutter/material.dart';
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/textspan_app_bar.dart';

List<String> items = [
  "Chat GPT 4 Open AI Model",
  "Dall-E 3 Image Generate",
  "75 AI Templates",
  "Custom Templates",
  "50 Images per week",
  "Unlimited Login"
];

class ViewPlansScreen extends StatefulWidget {
  const ViewPlansScreen({super.key});

  @override
  State<ViewPlansScreen> createState() => _ViewPlansScreenState();
}

class _ViewPlansScreenState extends State<ViewPlansScreen> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const CustomColumnAppBar(
          text: AppStrings.upgradePlan,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Text(
                AppStrings.viewPlanes,
                style: AppTextStyles.viewPlanTxtStyle,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  AppStrings.viewPlanBelowText,
                  style: AppTextStyles.viewPlanBelowTxtStyle,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(AppAssets.viewPlanIcon),
              const SizedBox(height: 20),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: AppColors.textfieldClr,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    iconTheme: const IconThemeData(color: Colors.white),
                  ),
                  child: ExpansionTile(
                    title: const Text(
                      AppStrings.annual,
                      style: AppTextStyles.annualMonthlyTxtStyle,
                    ),
                    subtitle: const Text(
                      AppStrings.first30days,
                      style: AppTextStyles.annualMonthlyLabelTxtStyle,
                    ),
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          width: 350,
                          height: 334,
                          decoration: BoxDecoration(
                            color: AppColors.textfieldClr,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  itemCount: items.length,
                                  itemBuilder: (context, index) => Row(
                                    children: [
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: _selectedIndex == index
                                              ? Colors.blue
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedIndex = index;
                                            });
                                          },
                                          child: _selectedIndex == index
                                              ? const Icon(
                                                  Icons.check,
                                                  color: Colors.black,
                                                  size: 12,
                                                )
                                              : null,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                        height: 40,
                                      ),
                                      Text(
                                        items[index],
                                        style: AppTextStyles.primaryTxtStyle,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
