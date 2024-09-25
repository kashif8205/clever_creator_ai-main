import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.text});



final String? text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.bwdicon),
            const Spacer(),
             Text(
              text?? '',
              style: AppTextStyles.screenSubTitleStyle,
            ),
            const Spacer(),
            SvgPicture.asset(AppAssets.share),
            const SizedBox(width: 10),
            SvgPicture.asset(AppAssets.userIcon),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
