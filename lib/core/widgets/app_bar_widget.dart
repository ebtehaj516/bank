import 'package:flutter/material.dart';

import '../utils/app_strings.dart';
import '../utils/app_text_style.dart';
import 'go_back_widget.dart';
import 'icon_with_cricleAvater_widget.dart';

Widget appBarWidgetOne(context,text)=>  Padding(
  padding: const EdgeInsets.only(top: 54,bottom: 32),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      goBack(context),
      Padding(
        padding: const EdgeInsets.only(left: 70,),
        child: Text(text,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 18,).apply(fontWeightDelta: 2),textAlign: TextAlign.center,),
      )
    ],
  ),
);
Widget appBarWidgetTow(context,text,icon,path)=> Padding(
padding: const EdgeInsets.only(top: 54,bottom: 32),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
goBack(context),
Text(text,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 18,).apply(fontWeightDelta: 2),textAlign: TextAlign.center,),
goPageIcon(context, icon, path)
],
),
);