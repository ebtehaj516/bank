import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';

import '../../feautures/Transctions/data/transcation_model.dart';
import '../utils/app_text_style.dart';
import 'icon_with_cricleAvater_widget.dart';


Widget Transction(icon,transcation,type_transction, price,iconColor)=>Padding(
  padding: const EdgeInsets.only(bottom: 25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          circleAvatarIconWithColor(icon, iconColor),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              children: [
                Text(transcation,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 16).apply(fontWeightDelta: 1),),
                Text(type_transction,style: CustomTextStyles.poppins400style12,),
              ],
            ),
          ),
        ],
      ),
      transcation=="Money Transfer"?
      Text("$price",style:CustomTextStyles.poppins500style32.copyWith(fontSize: 16).apply(fontWeightDelta: 1,color: AppColor.primaryColor),):
      Text("$price",style:CustomTextStyles.poppins500style32.copyWith(fontSize: 16).apply(fontWeightDelta: 1),),
    ],
  ),
);
Widget listViewWidget()=>  SliverList.builder(
  itemCount: transctions.length,
  itemBuilder:(context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Transction(transctions[index].icon,transctions[index].transcationName,transctions[index].transcationType,transctions[index].price,transctions[index].iconColor),
      );
    }
);
Widget listViewWidgetWithoutPadding()=>  SliverList.builder(
    itemCount: transctions.length,
    itemBuilder:(context,index){

      return Transction(transctions[index].icon,transctions[index].transcationName,transctions[index].transcationType,transctions[index].price,transctions[index].iconColor);
    }
);