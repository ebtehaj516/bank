import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';
import 'package:light_banking/core/utils/app_strings.dart';
import 'package:light_banking/core/utils/app_text_style.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.color,required this.text,  this.onPressed});
final Color? color;
final String text;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 56,
      child: ElevatedButton(onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor:color??AppColor.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
          ),
          child: Text(text,style: CustomTextStyles.poppins600style16,)),
    );
  }
}
