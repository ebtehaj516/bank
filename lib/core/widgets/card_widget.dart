import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../generated/assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_text_style.dart';

Widget card(){
  return Container(
    margin: EdgeInsets.only(bottom: 30,),
    width: 370,
    height: 199,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.black
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.imagesChip,),
              Icon(FontAwesomeIcons.wifi,color: AppColor.white2,size: 12,)
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text("4562"),
            text("1122"),
            text("4595"),
            text("7852"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 9,left: 25),
          child: Text("Ar josen",style:CustomTextStyles.poppins400style11.copyWith(fontSize: 13) ,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            columnWidget(AppStrings.expiryDate, "24/2000"),
            columnWidget("cvv", "9689"),
            Column(
             children: [
               SvgPicture.asset(Assets.imagesColorImage),
               textWithPadding("Mastercard")
             ],
            ),

          ],
        ),
      ],),
  );

}

Widget text(text)=>Text(text,style: CustomTextStyles.poppins400style11.copyWith(fontSize: 24),);

Widget columnWidget(String text1,text2)=> Column(
children: [
Text(text1,style: CustomTextStyles.poppins400style12.copyWith(fontSize: 9),),
  textWithPadding(text2),
],
);
Widget textWithPadding(text)=>Padding(
  padding: const EdgeInsets.only(bottom: 5,),
  child: Text(text,style:CustomTextStyles.poppins400style11.copyWith(fontSize: 13) ,),
);