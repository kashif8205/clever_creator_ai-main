// import 'package:clever_creator_ai/app_utils/app_assets.dart';
// import 'package:clever_creator_ai/app_utils/app_colors.dart';
// import 'package:clever_creator_ai/app_utils/app_strings.dart';
// import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
// import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
// import 'package:clever_creator_ai/widgets/custom_list_tile.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';

// final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

// class AiTutorScreen extends StatefulWidget {
//   const AiTutorScreen({super.key});

//   @override
//   State<AiTutorScreen> createState() => _AiTutorScreenState();
// }

// class _AiTutorScreenState extends State<AiTutorScreen> {
//   String? selectedStudent;
//   String? selectedAge;
//  RelativeRect buttonMenuPosition(BuildContext context) {
//   final RenderBox bar = context.findRenderObject() as RenderBox;
//   final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

//   // Apply both horizontal and vertical offsets
//   const Offset offset = Offset(40, 50); // Horizontal padding = 20, Vertical padding = 50

//   final RelativeRect position = RelativeRect.fromRect(
//     Rect.fromPoints(
//       bar.localToGlobal(bar.size.centerRight(Offset.zero) + offset, ancestor: overlay),
//       bar.localToGlobal(bar.size.centerRight(Offset.zero) + offset, ancestor: overlay),

//     ),
//     Offset.zero & overlay.size,
//   );
//   return position;
// }

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
//             CustomListTile(
//               leadingIcon: Image.asset(AppAssets.mathOperations),
//               titile: const Text(
//                 AppStrings.aiMAthTutor,
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               trailingIcon: const Icon(
//                 Icons.arrow_forward_ios_outlined,
//                 size: 15,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             CustomListTile(
//               leadingIcon: Image.asset(AppAssets.historyIcon),
//               titile: const Text(
//                 AppStrings.historyTutor,
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               trailingIcon: const Icon(
//                 Icons.arrow_forward_ios_outlined,
//                 size: 15,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             CustomListTile(
//               leadingIcon: Image.asset(AppAssets.scienceIcon),
//               titile: const Text(
//                 AppStrings.scienceTutor,
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               trailingIcon: const Icon(
//                 Icons.arrow_forward_ios_outlined,
//                 size: 15,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             CustomListTile(
//               leadingIcon: Image.asset(AppAssets.abcBlock),
//               titile: const Text(
//                 AppStrings.englishTutor,
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               trailingIcon: const Icon(
//                 Icons.arrow_forward_ios_outlined,
//                 size: 15,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             CustomListTile(
//               leadingIcon: Image.asset(AppAssets.aiCodingIcon),
//               titile: const Text(
//                 AppStrings.codingForKids,
//                 style: AppTextStyles.primaryTxtStyle,
//               ),
//               trailingIcon: const Icon(
//                 Icons.arrow_forward_ios_outlined,
//                 size: 15,
//               ),
//               onTap: () {
//                 final RelativeRect position = buttonMenuPosition(context);
//                 showMenu(
//                     constraints:
//                         const BoxConstraints(maxWidth: 333, maxHeight: 205),
//                     color: AppColors.menuBackgroundClr,
//                     context: context,
//                     position: position,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     items: [
//                       PopupMenuItem<int>(
//                         value: 0,
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton2(
//                             dropdownStyleData: const DropdownStyleData(
//                               maxHeight: 200,
//                             ),
//                             buttonStyleData: ButtonStyleData(
//                               height: 43,
//                               width: 313,
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               decoration: BoxDecoration(
//                                 color: AppColors.textfieldClr,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                             isExpanded: true,
//                             items: const [
//                               DropdownMenuItem(
//                                 value: AppStrings.school,
//                                 child: Text(
//                                   AppStrings.school,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                               DropdownMenuItem(
//                                 value: AppStrings.college,
//                                 child: Text(
//                                   AppStrings.college,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                               DropdownMenuItem(
//                                 value: AppStrings.university,
//                                 child: Text(
//                                   AppStrings.university,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                             ],
//                             value: selectedStudent,
//                             hint: const Text(
//                               AppStrings.studentType,
//                               style: AppTextStyles.primaryTxtStyle,
//                             ),
//                             onChanged: (String? value) {
//                               setState(() {
//                                 selectedStudent = value;
//                               });
//                               Navigator.pop(context);
//                             },
//                           ),
//                         ),
//                       ),
//                       PopupMenuItem<int>(
//                         value: 1,
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton2(
//                             dropdownStyleData: const DropdownStyleData(
//                               maxHeight: 200,
//                             ),
//                             buttonStyleData: ButtonStyleData(
//                               height: 43,
//                               width: 313,
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               decoration: BoxDecoration(
//                                 color: AppColors.textfieldClr,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                             isExpanded: true,
//                             items: const [
//                               DropdownMenuItem(
//                                 value: AppStrings.age,
//                                 child: Text(
//                                   AppStrings.age,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                               DropdownMenuItem(
//                                 value: AppStrings.age13To17,
//                                 child: Text(
//                                   AppStrings.age13To17,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                               DropdownMenuItem(
//                                 value: AppStrings.age18To30,
//                                 child: Text(
//                                   AppStrings.age18To30,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                               DropdownMenuItem(
//                                 value: AppStrings.age30Above,
//                                 child: Text(
//                                   AppStrings.age30Above,
//                                   style: AppTextStyles.primaryTxtStyle,
//                                 ),
//                               ),
//                             ],
//                             value: selectedAge,
//                             hint: const Text(
//                               AppStrings.age,
//                               style: AppTextStyles.primaryTxtStyle,
//                             ),
//                             onChanged: (String? value) {
//                               setState(() {
//                                 selectedAge = value;
//                               });
//                               Navigator.pop(context);
//                             },
//                           ),
//                         ),
//                       ),
//                       PopupMenuItem<int>(
//                         value: 2,
//                         child: DropdownButtonHideUnderline(
//                             child: DropdownButton2(
//                           buttonStyleData: ButtonStyleData(
//                               height: 43,
//                               width: 313,
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               decoration: BoxDecoration(
//                                 color: AppColors.textfieldClr,
//                                 borderRadius: BorderRadius.circular(10),
//                               )),
//                           isExpanded: true,
//                           items: const [
//                             DropdownMenuItem(
//                               value: AppStrings.grade,
//                               child: Text(
//                                 AppStrings.grade,
//                                 style: AppTextStyles.primaryTxtStyle,
//                               ),
//                             ),
//                           ],
//                           value: AppStrings.grade,
//                           onChanged: (value) {},
//                         )),
//                       ),
//                     ]);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }















// import 'package:flutter/material.dart';

// class CustomDropdownButton extends StatelessWidget {
//   final String? selectedValue;
//   final ValueChanged<String?>? onChanged;
//   final List<String> items;

//   const CustomDropdownButton({
//     super.key,
//      this.selectedValue,
//      this.onChanged,
//     required this.items, required String hintText, required IconData leadingIcon, required IconData dropdownIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 44,
//       width: 90,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: Colors.grey, width: 2),
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           value: selectedValue,
//           hint: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text('Select'),
//           ),
//           onChanged: onChanged,
//           items: items.map((String item) {
//             return DropdownMenuItem<String>(
//               value: item,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Text(item),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
