import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, 
    this.titile, 
    this.leadingIcon, 
    this.trailingIcon,
    this.onTap,
    this.style = AppTextStyles.primaryTxtStyle,
  });

  final String? titile;
  final String? leadingIcon; 
  final IconData? trailingIcon;
  final VoidCallback? onTap;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ListTile(
        leading: leadingIcon != null 
          ? Image.asset(leadingIcon!) 
          : null, 
        title: Text(titile ?? '', style: style),
        tileColor: AppColors.textfieldClr,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        trailing: Icon(trailingIcon,size: 15,),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      ),
    );
  }
}
