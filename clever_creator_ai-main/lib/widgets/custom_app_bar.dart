import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clever_creator_ai/app_utils/app_assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    this.icon = AppAssets.share,
    this.onPressed,
    this.leadingIcon = AppAssets.bwdicon,
    this.style = AppTextStyles.screenSubTitleStyle,  this.trailingIcon = AppAssets.userIcon
  });
  final String text;
  final String icon;
  final VoidCallback? onPressed;
  final String leadingIcon;
  final TextStyle style;
  final String trailingIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          icon: SvgPicture.asset(leadingIcon)),
      title: Center(
        child: Text(
          text,
          style: style,
        ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset(icon)),
         IconButton(onPressed: (){}, icon: SvgPicture.asset(trailingIcon)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
