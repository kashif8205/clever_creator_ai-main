import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String? hintText;
  final String? leadingIcon;
  final IconData dropdownIcon;
  final double width;
  final double height;
  final double borderRadius;
  final TextStyle textStyle;

  const CustomDropdownButton({
    Key? key,
    required this.items,
    required this.hintText,
    this.leadingIcon,
    this.dropdownIcon = Icons.arrow_drop_down,
    this.width = double.infinity,
    this.height = 55,
    this.borderRadius = 10,
    this.textStyle = AppTextStyles.primaryTxtStyle,
  }) : super(key: key);

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}
class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: AppColors.textfieldClr,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          icon: Icon(widget.dropdownIcon, color: AppColors.primaryclr),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
          items: widget.items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),  // Add padding here
                child: Text(item),
              ),
            );
          }).toList(),
          hint: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                if (widget.leadingIcon != null) 
                  Image.asset(widget.leadingIcon!),
                if (widget.leadingIcon != null) 
                  const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    widget.hintText ?? '',
                    style: widget.textStyle,
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
