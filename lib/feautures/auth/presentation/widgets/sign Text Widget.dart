import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class SignTextWidget extends StatelessWidget {
  const SignTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Text(text,style: CustomTextStyles.poppins500style32.apply(fontWeightDelta: 1),),
    );
}}