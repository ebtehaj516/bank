
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import 'icon_with_cricleAvater_widget.dart';

Widget barIcon()=>Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      tabIcon(Icons.arrow_upward_outlined,"sent"),
      tabIcon(Icons.arrow_downward_outlined,"Receive"),
      tabIcon(Icons.attach_money_outlined,"Loan"),
      tabIcon(Icons.cloud_download_outlined,"Topup"),
    ]
);
Widget tabIcon(icon,text) => Column(
  children: [
    circleAvatarIcon(icon,),
    Padding(
      padding: const EdgeInsets.only(top: 7),
      child: Text(text,style: CustomTextStyles.poppins400style13,),
    )

  ],);