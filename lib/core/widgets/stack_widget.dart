import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_text_style.dart';
import 'bar_icon_widget.dart';
import 'card_widget.dart';

Widget stack()=>Stack(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          card(),
          barIcon(),
          rowWidget(AppStrings.transaction),
        ],
      ),
    ),
    position(1.0,-260.0,850.0),

  ],
);


Widget rowWidget(text)=>Padding(
  padding: const EdgeInsets.only(top: 22,bottom: 19),
  child: row(text),
);
Widget row(text)=>Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(text,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 18).apply(fontWeightDelta: 1)),
    Text(AppStrings.seeAll,style: CustomTextStyles.poppins500style14.copyWith(color: AppColor.primaryColor).apply(fontWeightDelta: 1),),

  ],
);
Widget position(right,bottom,height,)=>  Positioned(
    right: right,
    bottom: bottom,   height:height,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SvgPicture.asset(Assets.imagesEllipse1,color:AppColor.primaryColor,),
    ));