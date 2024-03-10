import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key, required this.text1, required this.text2,  this.onTap});
  final String text1,text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(TextSpan(
          children: [
            TextSpan(text: text1,style: CustomTextStyles.poppins400style14.copyWith(color: AppColor.lightGray),),
            TextSpan(text: text2,style: CustomTextStyles.poppins500style14.apply(fontWeightDelta: 1),),
          ]
      )),
    );
  }
}