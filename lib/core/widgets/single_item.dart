import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/utils/app_strings.dart';

import '../../generated/assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

Widget SingleItem(icon,text,bool back)=>Padding(
  padding: const EdgeInsets.only(top: 25),
  child: Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
          color: AppColor.white1,
        width: 2
      )),
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,color: AppColor.lightGray,size: 22,),
              Padding(
                padding: const EdgeInsets.only(left:16),
                child: Text(text,style: CustomTextStyles.poppins400style14.copyWith(color: AppColor.black),
              ),),
            ],
          ),
          back?Icon(Icons.arrow_forward_ios,size: 18,color: AppColor.gray,):
          CircleAvatar(
            radius: 10,
            backgroundColor: AppColor.red,
            child: Text("2",style: CustomTextStyles.poppins400style11,),
          ),
        ],
      ),
    ),
  ),
);
Widget SingleItem1(text)=>Padding(
  padding: const EdgeInsets.only(top: 22),
  child: Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        width: 2,
          color: AppColor.white1
      )),
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: CustomTextStyles.poppins500style14.copyWith(color: AppColor.black).apply(fontWeightDelta: 4)),
          text==AppStrings.language?Padding(
            padding: const EdgeInsets.only(left:180),
            child: Text(AppStrings.english,style: CustomTextStyles.poppins400style14.copyWith(color: AppColor.lightGray),),
          ):Container(),
          Icon(Icons.arrow_forward_ios,size: 18,color: AppColor.gray,),
        ],
      ),
    ),
  ),
);
Widget SingleItem2(image,text)=>Padding(
  padding: const EdgeInsets.only(bottom: 22),
  child: Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
          width: 2,
          color: AppColor.white1
      )),
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
     Row(
       children: [
         CircleAvatar(
             radius: 35,
             backgroundImage:AssetImage(image)),
         Padding(
           padding: const EdgeInsets.only(left: 16,),
           child: Text(text),
         ),

       ],
     ),
          text==AppStrings.english ?Icon(Icons.check_circle,size: 18,color: AppColor.primaryColor,):Container(),
        ],
      ),
    ),
  ),
);
