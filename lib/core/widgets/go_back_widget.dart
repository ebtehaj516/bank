import 'package:flutter/material.dart';
import '../functions/navigation.dart';
import 'icon_with_cricleAvater_widget.dart';

Widget goBack(context){
  return GestureDetector(
    onTap: (){
      customRemoveNavigate(context);
    },
    child:circleAvatarIcon(Icons.arrow_back_ios),


  );
}