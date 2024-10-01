import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';

class AiTutorScreen extends StatefulWidget {
  const AiTutorScreen({super.key});

  @override
  State<AiTutorScreen> createState() => _AiTutorScreenState();
}

class _AiTutorScreenState extends State<AiTutorScreen> {
  // Create lists to store selected values for each ListTile
  List<String?> selectedStudents = List.filled(5, null); // Adjust size as needed
  List<String?> selectedAges = List.filled(5, null); // Adjust size as needed

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

  void showCustomMenu(BuildContext context, GlobalKey listTileKey, int index) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final RenderBox tileRenderBox = listTileKey.currentContext!.findRenderObject() as RenderBox;

    final double tileBottom = tileRenderBox.localToGlobal(Offset.zero).dy + tileRenderBox.size.height;

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
        maxHeight: 205,
      ),
      color: AppColors.menuBackgroundClr,
      items: [
        PopupMenuItem<int>(
          value: 0,
          child: ExpansionTile(
          title:const Text('ExpansionTile 1'),
          subtitle:const Text('Trailing expansion arrow icon'),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),),
        //   DropdownButtonHideUnderline(
        //     child: DropdownButton2(
        //       dropdownStyleData: const DropdownStyleData(
        //         maxHeight: 200,
        //       ),
        //       buttonStyleData: ButtonStyleData(
        //         height: 43,
        //         width: overlay.size.width - 40, // Dynamic width
        //         padding: const EdgeInsets.symmetric(horizontal: 20),
        //         decoration: BoxDecoration(
        //           color: AppColors.textfieldClr,
        //           borderRadius: BorderRadius.circular(10),
        //         ),
        //       ),
        //       isExpanded: true,
        //       items:  [
                
        //         DropdownMenuItem(
        //           value: AppStrings.college,
        //           child:ExpansionTile(
        //   title:const Text('ExpansionTile 1'),
        //   subtitle:const Text('Trailing expansion arrow icon'),
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Container(
        //           height: 50,
        //           width: 100,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           height: 50,
        //           width: 100,
        //           color: Colors.blue,
        //         ),
        //         Container(
        //           height: 50,
        //           width: 100,
        //           color: Colors.orange,
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        //         ),
        //         DropdownMenuItem(
        //           value: AppStrings.college,
        //           child: Text(
        //             AppStrings.college,
        //             style: AppTextStyles.primaryTxtStyle,
        //           ),
        //         ),
        //         DropdownMenuItem(
        //           value: AppStrings.university,
        //           child: Text(
        //             AppStrings.university,
        //             style: AppTextStyles.primaryTxtStyle,
        //           ),
        //         ),
        //       ],
        //       value: selectedStudents[index], // Use index to access the correct value
        //       hint: const Text(
        //         AppStrings.studentType,
        //         style: AppTextStyles.primaryTxtStyle,
        //       ),
        //       onChanged: (String? value) {
        //         setState(() {
        //           selectedStudents[index] = value; // Update the selected value for this index
        //         });
        //       },
        //     ),
        //   ),
        // ),
        PopupMenuItem<int>(
          value: 1,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              dropdownStyleData: const DropdownStyleData(
                maxHeight: 200,
              ),
              buttonStyleData: ButtonStyleData(
                height: 43,
                width: overlay.size.width - 40, // Dynamic width
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.textfieldClr,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: AppStrings.age,
                  child: Text(
                    AppStrings.age,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
                DropdownMenuItem(
                  value: AppStrings.age13To17,
                  child: Text(
                    AppStrings.age13To17,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
                DropdownMenuItem(
                  value: AppStrings.age18To30,
                  child: Text(
                    AppStrings.age18To30,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
                DropdownMenuItem(
                  value: AppStrings.age30Above,
                  child: Text(
                    AppStrings.age30Above,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
              ],
              value: selectedAges[index], // Use index to access the correct value
              hint: const Text(
                AppStrings.age,
                style: AppTextStyles.primaryTxtStyle,
              ),
              onChanged: (String? value) {
                setState(() {
                  selectedAges[index] = value; // Update the selected value for this index
                });
              },
            ),
          ),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              buttonStyleData: ButtonStyleData(
                height: 43,
                width: overlay.size.width - 40, // Dynamic width
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.textfieldClr,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: AppStrings.grade,
                  child: Text(
                    AppStrings.grade,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
              ],
              value: AppStrings.grade,
              onChanged: (value) {
                // Handle grade selection
              },
            ),
          ),
        ),
        PopupMenuItem(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the menu
                },
                text: AppStrings.cancel,
                textStyle: AppTextStyles.textBtnStyle,
              ),
              const SizedBox(width: 8), // Optional spacing between buttons
              CustomTextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the menu
                },
                text: AppStrings.start,
                textStyle: AppTextStyles.textBtnStyle,
              ),
            ],
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
              // CustomListTile(
              //   key: _listTileKeys[index],
              //   leadingIcon: Image.asset(_icons[index]),
              //   titile: Text(
              //     _titles[index],
              //     style: AppTextStyles.primaryTxtStyle,
              //   ),
              //   trailingIcon: const Icon(
              //     Icons.arrow_forward_ios_outlined,
              //     size: 15,
              //   ),
              //   onTap: () => showCustomMenu(context, _listTileKeys[index], index), // Pass index
              // ),
              const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}





































// import 'package:flutter/material.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:clever_creator_ai/app_utils/app_assets.dart';
// import 'package:clever_creator_ai/app_utils/app_colors.dart';
// import 'package:clever_creator_ai/app_utils/app_strings.dart';
// import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
// import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
// import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
// import 'package:clever_creator_ai/widgets/custom_txt_btn.dart';

// class AiTutorScreen extends StatefulWidget {
//   const AiTutorScreen({super.key});

//   @override
//   State<AiTutorScreen> createState() => _AiTutorScreenState();
// }

// class _AiTutorScreenState extends State<AiTutorScreen> {
//   String? selectedStudent;
//   String? selectedAge;
//   final Color selectedClr = AppColors.textfieldClr;

//   // Create a list of GlobalKeys for each CustomListTile
//   final List<GlobalKey> _listTileKeys = List.generate(5, (_) => GlobalKey());

//   // Define lists of icons and titles
//   final List<String> _titles = [
//     AppStrings.aiMAthTutor,
//     AppStrings.historyTutor,
//     AppStrings.scienceTutor,
//     AppStrings.englishTutor,
//     AppStrings.codingForKids,
//   ];

//   final List<String> _icons = [
//     AppAssets.mathOperations,
//     AppAssets.historyIcon,
//     AppAssets.scienceIcon,
//     AppAssets.abcBlock,
//     AppAssets.aiCodingIcon,
//   ];

//   void showCustomMenu(BuildContext context, GlobalKey listTileKey) {
//     final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
//     final RenderBox tileRenderBox = listTileKey.currentContext!.findRenderObject() as RenderBox;

//     // Calculate the position based on the ListTile's position
//     final double tileBottom = tileRenderBox.localToGlobal(Offset.zero).dy + tileRenderBox.size.height;

//     showMenu(
//       context: context,
//       position: RelativeRect.fromLTRB(
//         20, // Left padding
//         tileBottom + 10, // Add some vertical padding below the ListTile
//         20, // Right padding
//         0, // Bottom position
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       constraints: BoxConstraints(
//         maxWidth: overlay.size.width - 40,
//         maxHeight: 205,
//       ),
//       color: AppColors.menuBackgroundClr,
//       items: [
//         PopupMenuItem<int>(
//           value: 0,
//           child: StatefulBuilder(
//             builder: (context, setState) {
//               return Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildDropdownItem(
//                     text: AppStrings.school,
//                     isSelected: selectedStudent == AppStrings.school,
//                     onTap: () {
//                       setState(() {
//                         selectedStudent = AppStrings.school;
//                       });
//                       Navigator.pop(context);
//                     },
//                   ),
//                   _buildDropdownItem(
//                     text: AppStrings.college,
//                     isSelected: selectedStudent == AppStrings.college,
//                     onTap: () {
//                       setState(() {
//                         selectedStudent = AppStrings.college;
//                       });
//                       Navigator.pop(context);
//                     },
//                   ),
//                   _buildDropdownItem(
//                     text: AppStrings.university,
//                     isSelected: selectedStudent == AppStrings.university,
//                     onTap: () {
//                       setState(() {
//                         selectedStudent = AppStrings.university;
//                       });
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//         PopupMenuItem<int>(
//           value: 1,
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton2(
//               dropdownStyleData: const DropdownStyleData(
//                 maxHeight: 200,
//               ),
//               buttonStyleData: ButtonStyleData(
//                 height: 43,
//                 width: overlay.size.width - 40, // Dynamic width
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                   color: AppColors.textfieldClr,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               isExpanded: true,
//               items: [
//                 DropdownMenuItem(
//                   value: AppStrings.age,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       _buildDropdownItem(
//                         text: AppStrings.age13To17,
//                         isSelected: selectedAge == AppStrings.age13To17,
//                         onTap: () {
//                           setState(() {
//                             selectedAge = AppStrings.age13To17;
//                           });
//                           Navigator.pop(context);
//                         },
//                       ),
//                       _buildDropdownItem(
//                         text: AppStrings.age18To30,
//                         isSelected: selectedAge == AppStrings.age18To30,
//                         onTap: () {
//                           setState(() {
//                             selectedAge = AppStrings.age18To30;
//                           });
//                           Navigator.pop(context);
//                         },
//                       ),
//                       _buildDropdownItem(
//                         text: AppStrings.age30Above,
//                         isSelected: selectedAge == AppStrings.age30Above,
//                         onTap: () {
//                           setState(() {
//                             selectedAge = AppStrings.age30Above;
//                           });
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//               value: selectedAge,
//               hint: const Text(
//                 AppStrings.age,
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               onChanged: (String? value) {
//                 setState(() {
//                   selectedAge = value;
//                 });
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//         ),
//         PopupMenuItem<int>(
//           value: 2,
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton2(
//               buttonStyleData: ButtonStyleData(
//                 height: 43,
//                 width: overlay.size.width - 40, // Dynamic width
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                   color: AppColors.textfieldClr,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               isExpanded: true,
//               items: [
//                 DropdownMenuItem(
//                   value: AppStrings.grade,
//                   child: Text(
//                     AppStrings.grade,
//                     style: AppTextStyles.primaryTxtStyle,
//                   ),
//                 ),
//               ],
//               value: AppStrings.grade,
//               hint: const Text(
//                 AppStrings.grade, // Add hint text for consistency
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               onChanged: (value) {
//                 // Handle change if necessary
//               },
//             ),
//           ),
//         ),
//         PopupMenuItem(
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               CustomTextButton(
//                 onPressed: () {},
//                 text: AppStrings.cancel,
//                 textStyle: AppTextStyles.textBtnStyle,
//               ),
//               CustomTextButton(
//                 onPressed: () {},
//                 text: AppStrings.start,
//                 textStyle: AppTextStyles.textBtnStyle,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDropdownItem({
//     required String text,
//     required bool isSelected,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         decoration: BoxDecoration(
//           color: isSelected ? AppColors.selectedItemColor : AppColors.menuBackgroundClr,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: AppColors.borderClr),
//         ),
//         child: Text(
//           text, // Display the correct text
//           style: AppTextStyles.primaryTxtStyle,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(
//         text: AppStrings.aiTutor,
//         icon: AppAssets.share,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             for (int index = 0; index < _listTileKeys.length; index++) ...[
//               CustomListTile(
//                 key: _listTileKeys[index],
//                 leadingIcon: Image.asset(_icons[index]),
//                 titile: Text(
//                   _titles[index],
//                   style: AppTextStyles.primaryTxtStyle,
//                 ),
//                 trailingIcon: const Icon(
//                   Icons.arrow_forward_ios_outlined,
//                   size: 15,
//                 ),
//                 onTap: () => showCustomMenu(context, _listTileKeys[index]),
//               ),
//               const SizedBox(height: 10),
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }
