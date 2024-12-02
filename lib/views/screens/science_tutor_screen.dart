import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/app_utils/doc_picker.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_field_button.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:flutter/material.dart';

class ScienceTutorScreen extends StatefulWidget {
  const ScienceTutorScreen({super.key});

  @override
  State<ScienceTutorScreen> createState() => _ScienceTutorScreenState();
}

class _ScienceTutorScreenState extends State<ScienceTutorScreen> {
  String ? _documentPicker;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          text: AppStrings.scienceTutor, icon: AppAssets.share),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AppAssets.avatar),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    AppStrings.you,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.processOfPlant,
                style: AppTextStyles.processOfPlantstyle,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 CustomRowButton(icon: AppAssets.editIcon,
                 text: AppStrings.editTxt,),
                  //  SizedBox(
                  //   width: 20,
                  // ),
                CustomRowButton(icon: AppAssets.copyIcon,
                 text: AppStrings.copy,),
                  //  SizedBox(
                  //   width: 20,
                  // ),
                 
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(AppAssets.aiScienceLogo),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    AppStrings.scienceTutor,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.scienceTutorExp,
                style: AppTextStyles.imgLableTxtStyle,
              ),
              const SizedBox(
                height: 20,
              ),
               const  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 CustomRowButton(icon: AppAssets.downloadIcon,
                 text: AppStrings.download,),
                 
                CustomRowButton(icon: AppAssets.shareIcon,
                 text: AppStrings.share,),
                  
                 CustomRowButton(icon: AppAssets.regenerateIcon,
                 text: AppStrings.regenerate,), 
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 140,
              ),
             CustomFieldAndButton(
              icon: AppAssets.documentIcon,
              onPressed: () {
                DocumentPickerBottomSheet.showDocumentUploadBottomSheet(context, 
                (onDocumentPicked){
                  setState(() {
                    _documentPicker = onDocumentPicked;
                  });
                });
              },
            )
            ],
          ),
        ),
      ),
    );
  }
}
