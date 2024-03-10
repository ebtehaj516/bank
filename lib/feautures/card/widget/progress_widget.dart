import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_style.dart';

Widget progress()=>Padding(
  padding: const EdgeInsets.only(bottom: 18),
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 19),
        child: Text(AppStrings.monthlySpendingLimit,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 18),),
      ),
      Container(
        height: 113,
        width: 335,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColor.white1,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23,bottom: 11,left: 24),
              child: Text("Amount: \$8,545.00",style: CustomTextStyles.poppins400style13,),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 11,left: 12),
              child:LinearPercentIndicator(
                width: 287,
                lineHeight: 7,
                percent: 0.4,
                widgetIndicator: CircleAvatar(backgroundColor: AppColor.primaryColor,radius: 8,child: CircleAvatar(backgroundColor: AppColor.offWhite,radius: 5,),),
                barRadius:Radius.circular(30),
                backgroundColor: AppColor.offWhite,
                animation: true,
                progressColor: AppColor.primaryColor,
                animationDuration: 2500,

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("0\$",style: CustomTextStyles.poppins400style12,),
                  Text("4600\$",style: CustomTextStyles.poppins400style12.copyWith(color: AppColor.black),),
                  Text("10000\$",style: CustomTextStyles.poppins400style12,),
                ],
              ),
            )
          ],
        ),
      )
    ],
  ),
);
