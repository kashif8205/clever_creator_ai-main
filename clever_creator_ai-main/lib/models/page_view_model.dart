import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildPage({
  required String image,
  required String title,
}) =>
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: 300,
          ),
          Text(
            
            title,
            style: AppTextStyles.titleTxtStyle,
            textAlign: TextAlign.center,
            
          )
        ],
      ),
    );
