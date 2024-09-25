import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconRow extends StatelessWidget {
  const CustomIconRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppAssets.google),
          SvgPicture.asset(AppAssets.apple),
          SvgPicture.asset(AppAssets.facebook),
        ],
      ),
    );
  }
}
