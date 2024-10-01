import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ExpansiontileWidget extends StatefulWidget {
  const ExpansiontileWidget({super.key});

  @override
  State<ExpansiontileWidget> createState() => _ExpansiontileWidgetState();
}

class _ExpansiontileWidgetState extends State<ExpansiontileWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    showTrailingIcon: false,
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        _isExpanded = expanded;
                      });
                    },
                    trailing: null,
                    title: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(AppStrings.studentType,
                              style: AppTextStyles.primaryTxtStyle),
                          // Custom expansion icon inside the border
                          Icon(
                            _isExpanded
                                ? Icons.expand_less // Icon when expanded
                                : Icons.expand_more, // Icon when collapsed
                          ),
                        ],
                      ),
                    ),
                    tilePadding: EdgeInsets.zero,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Container(
                              height: 43,
                              width: 89,
                              decoration: BoxDecoration(
                                border: Border.all(
                                 
                                  width: 1.0, 
                                ),
                                borderRadius: BorderRadius.circular(
                                    10), 
                              ),
                              
                            ), 
                            Container(
                              height: 43,
                              width: 89,
                              decoration: BoxDecoration(
                                border: Border.all(
                                 
                                  width: 1.0, 
                                ),
                                borderRadius: BorderRadius.circular(
                                    10), 
                              ),
                            ),
                           Container(
                              height: 43,
                              width: 89,
                              decoration: BoxDecoration(
                                border: Border.all(
                                 
                                  width: 1.0, 
                                ),
                                borderRadius: BorderRadius.circular(
                                    10), 
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
