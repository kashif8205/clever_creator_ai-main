import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the SVG package

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String? hintText;
  final String? leadingIcon;
  final String dropdownIcon;  // Expecting SVG path as a string
  final double width;
  final double height;
  final double borderRadius;
  final TextStyle textStyle;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.hintText,
    this.leadingIcon,
    this.dropdownIcon = AppAssets.dropDownIcon,  // Default SVG icon
    this.width = double.infinity,
    this.height = 55,
    this.borderRadius = 10,
    this.textStyle = AppTextStyles.primaryTxtStyle,
  });

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  final LayerLink _layerLink = LayerLink();
  String? selectedValue;
  OverlayEntry? _overlayEntry;

  void _toggleDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height + 10), // Offset to show dropdown 10 pixels below
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: widget.items.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      selectedValue = item;
                      _toggleDropdown();
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: AppColors.textfieldClr,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.leadingIcon != null)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(widget.leadingIcon!),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    selectedValue ?? widget.hintText ?? '',
                    style: widget.textStyle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(
                  widget.dropdownIcon,
                 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }
}
