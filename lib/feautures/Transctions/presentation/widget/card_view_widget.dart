import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

Widget cardView()=>Container(
  width: 335,
  height: 125,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      border:Border.all(
          color: AppColor.white1,
        width: 2,

      ),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 23),
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.enterYourAmount,style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.gray),),
            Text(AppStrings.changeCurrency,style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.lightRed),),
          ],
        ),
      ),
      Row(
        children: [
          Text(AppStrings.usd,style: CustomTextStyles.poppins600style24,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("26.00.00",style: CustomTextStyles.poppins600style24.copyWith(color: AppColor.black),),
          ),
        ],
      )
    ],
  ),
);


Widget cardViewSend()=>Container(
  width: 370,
  height: 129,
  padding: EdgeInsets.symmetric(horizontal: 15),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
    border:Border.all(
      color: AppColor.white1,
      width: 2,

    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text("Send to",),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           width: 40,
           height: 40,
           margin: EdgeInsets.only(top: 10),
           decoration: BoxDecoration(
             shape: BoxShape.circle,
             border: Border.all(
               color: AppColor.primaryColor,

             )
           ),
          child: Align(
              child: Text("+",style: TextStyle(color: AppColor.primaryColor,fontSize: 30),)),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 7,bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Add",style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.black),),
                Text("yamilet",style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.black),),
                Text("Alexa",style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.black),),
                Text("Yakub",style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.black),),
                Text("Krishna",style: CustomTextStyles.poppins400style11.copyWith(color: AppColor.black),)
              ],
            ),
          )
        ],
      )
    ],
  ),
);