import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';

abstract class CustomTextStyles{
   static  const TextAlign textAlign =TextAlign.center;
 static final poppins600style35=TextStyle(
 fontSize: 35,
 fontWeight: FontWeight.w600,
 color: AppColor.black,
 fontFamily: "Poppins",

     );
 static final poppins600style16=TextStyle(
     fontSize: 16,
     fontWeight: FontWeight.w600,
     color: AppColor.offWhite,
     fontFamily: "Poppins"
 );

   static final poppins600style24=TextStyle(
       fontSize: 24,
       fontWeight: FontWeight.w600,
       color: Color(0xff9BB2D4),
       fontFamily: "Poppins"
   );
   static final poppins400style13=TextStyle(
       fontSize: 13,
       fontWeight: FontWeight.w400,
       color: AppColor.black,
       fontFamily: "Poppins"
   );
 static final poppins400style14=TextStyle(
     fontSize: 14,
     fontWeight: FontWeight.w400,

     color: AppColor.gray,
     fontFamily: "Poppins",
 );
   static final poppins400style12=TextStyle(
     fontSize: 12,
     fontWeight: FontWeight.w400,

     color: AppColor.dGray,
     fontFamily: "Poppins",
   );
   static final poppins400style11=TextStyle(
     fontSize: 11,
     fontWeight: FontWeight.w400,

     color: AppColor.offWhite,
     fontFamily: "Poppins",
   );
   static final poppins500style32=TextStyle(
     fontSize: 32,
     fontWeight: FontWeight.w500,
     color: AppColor.black,
     fontFamily: "Poppins",

   );
   static final poppins500style14=TextStyle(
     fontSize: 14,
     fontWeight: FontWeight.w500,
     color: AppColor.primaryColor,
     fontFamily: "Poppins",

   );

}