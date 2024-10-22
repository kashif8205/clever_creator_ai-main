import 'package:clever_creator_ai/views/screens/science_tutor_screen.dart';
import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';
import 'package:clever_creator_ai/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';

class AiTutorScreen extends StatefulWidget {
  const AiTutorScreen({super.key});

  @override
  State<AiTutorScreen> createState() => _AiTutorScreenState();
}

class _AiTutorScreenState extends State<AiTutorScreen> {
  // ValueNotifiers to manage selected indices for each tile
  final List<ValueNotifier<int?>> selectedStudentNotifiers =
      List.generate(5, (_) => ValueNotifier<int?>(null));
  final List<ValueNotifier<int?>> selectedAgeNotifiers =
      List.generate(5, (_) => ValueNotifier<int?>(null));
  final List<ValueNotifier<int?>> selectedGradeNotifiers =
      List.generate(5, (_) => ValueNotifier<int?>(null));

  bool _isExpanded = false;

  // Create a list of GlobalKeys for each CustomListTile
  final List<GlobalKey> _listTileKeys = List.generate(5, (_) => GlobalKey());

  // Define lists of icons and titles
  final List<String> _titles = [
    AppStrings.aiMAthTutor,
    AppStrings.historyTutor,
    AppStrings.scienceTutor,
    AppStrings.englishTutor,
    AppStrings.codingForKids,
  ];

  final List<String> _icons = [
    AppAssets.mathOperations,
    AppAssets.historyIcon,
    AppAssets.scienceIcon,
    AppAssets.abcBlock,
    AppAssets.aiCodingIcon,
  ];

  // Helper method to build selectable containers
  Widget _buildSelectableContainer({
    required String label,
    required ValueNotifier<int?> selectedIndexNotifier,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        selectedIndexNotifier.value = index; // Update the notifier directly
      },
      child: Container(
        height: 43,
        width: 89,
        decoration: BoxDecoration(
          color: selectedIndexNotifier.value == index
              ? AppColors.textfieldClr
              : AppColors.menuBackgroundClr,
          border: Border.all(width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: AppTextStyles.schoolClgUniTxtStyle.copyWith(
              color: selectedIndexNotifier.value == index
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void showCustomMenu(BuildContext context, GlobalKey listTileKey, int index) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RenderBox tileRenderBox =
        listTileKey.currentContext!.findRenderObject() as RenderBox;

    final double tileBottom =
        tileRenderBox.localToGlobal(Offset.zero).dy + tileRenderBox.size.height;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        20, // Left padding
        tileBottom + 10, // Add some vertical padding below the ListTile
        20, // Right padding
        0, // Bottom position
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints(
        maxWidth: overlay.size.width - 40,
        maxHeight: 245,
      ),
      color: AppColors.menuBackgroundClr,
      items: [
        PopupMenuItem<int>(
          value: 0,
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedBackgroundColor: AppColors.menuBackgroundClr,
              iconColor: Colors.white,
              showTrailingIcon: false,
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
                        style: AppTextStyles.primaryTxtStyle),
                    Icon(
                      _isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              tilePadding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ValueListenableBuilder<int?>(
                          valueListenable: selectedStudentNotifiers[index],
                          builder: (context, selectedIndex, child) {
                            return Row(
                              children: [
                                _buildSelectableContainer(
                                  label: AppStrings.school,
                                  selectedIndexNotifier:
                                      selectedStudentNotifiers[index],
                                  index: 0,
                                ),
                                const SizedBox(width: 10),
                                _buildSelectableContainer(
                                  label: AppStrings.college,
                                  selectedIndexNotifier:
                                      selectedStudentNotifiers[index],
                                  index: 1,
                                ),
                                const SizedBox(width: 10),
                                _buildSelectableContainer(
                                  label: AppStrings.university,
                                  selectedIndexNotifier:
                                      selectedStudentNotifiers[index],
                                  index: 2,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedBackgroundColor: AppColors.menuBackgroundClr,
              iconColor: Colors.white,
              showTrailingIcon: false,
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
                    const Text(AppStrings.age,
                        style: AppTextStyles.primaryTxtStyle),
                    Icon(
                      _isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              tilePadding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ValueListenableBuilder<int?>(
                          valueListenable: selectedAgeNotifiers[index],
                          builder: (context, selectedIndex, child) {
                            return Row(
                              children: [
                                _buildSelectableContainer(
                                  label: AppStrings.age13To17,
                                  selectedIndexNotifier:
                                      selectedAgeNotifiers[index],
                                  index: 0,
                                ),
                                const SizedBox(width: 10),
                                _buildSelectableContainer(
                                  label: AppStrings.age18To30,
                                  selectedIndexNotifier:
                                      selectedAgeNotifiers[index],
                                  index: 1,
                                ),
                                const SizedBox(width: 10),
                                _buildSelectableContainer(
                                  label: AppStrings.age30Above,
                                  selectedIndexNotifier:
                                      selectedAgeNotifiers[index],
                                  index: 2,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedBackgroundColor: AppColors.menuBackgroundClr,
              iconColor: Colors.white,
              showTrailingIcon: false,
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
                    const Text(AppStrings.grade,
                        style: AppTextStyles.primaryTxtStyle),
                    Icon(
                      _isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              tilePadding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ValueListenableBuilder<int?>(
                          valueListenable: selectedGradeNotifiers[index],
                          builder: (context, selectedIndex, child) {
                            return Row(
                              children: [
                                _buildSelectableContainer(
                                  label: AppStrings.grade,
                                  selectedIndexNotifier:
                                      selectedGradeNotifiers[index],
                                  index: 0,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem<int>(
          value: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: Row(
              children: [
                CustomTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: AppStrings.cancel,
                  textStyle: AppTextStyles.textBtnStyle,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextButton(
                  onPressed: () {},
                  text: AppStrings.start,
                  textStyle: AppTextStyles.textBtnStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.aiTutor,
        icon: AppAssets.share,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int index = 0; index < _listTileKeys.length; index++) ...[
              CustomListTile(
                key: _listTileKeys[index],
                leadingIcon: _icons[index],
                title: _titles[index],
                onTap: () =>
                    showCustomMenu(context, _listTileKeys[index], index),
                trailingIcon: Icons.arrow_drop_down,
              ),
              const SizedBox(height: 10),
            ],
            const SizedBox(
              height: 200,
            ),
             PrimaryBtn(
              elBtnTxt: AppStrings.next,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScienceTutorScreen()));
              },)
          ],
        ),
      ),
    );
  }
}
