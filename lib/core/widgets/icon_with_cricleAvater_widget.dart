import 'package:flutter/material.dart';

import '../functions/navigation.dart';
import '../utils/app_colors.dart';

Widget goPageIcon(context,icon,path){
  return GestureDetector(
    onTap: (){
      customNavigate(context,path);
    },
    child:circleAvatarIcon(icon),
  );}
Widget circleAvatarIcon(icon,)=>CircleAvatar(
radius: 30,
backgroundColor: AppColor.white1,
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 12),
child: Icon(icon,size: 20,color: AppColor.black,),
),

);
Widget circleAvatarIconWithColor(icon,iconColor)=>CircleAvatar(
  radius: 30,
  backgroundColor: AppColor.white1,
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Icon(icon,size: 20,color: iconColor,),
  ),

);