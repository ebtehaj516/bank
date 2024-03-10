import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

Widget  searchContainer(text)=>Container(
  height: 60,
  width: 335,
  decoration:BoxDecoration(
    color: AppColor.white1,
    borderRadius: BorderRadius.circular(10),
  ) ,
  child: Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: TextField(
      cursorColor: AppColor.dGray,
      style: TextStyle(
        color:  AppColor.dGray,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Icon(Icons.search_outlined,color: AppColor.dGray,size: 30,),
        ),
        hintText: text,
        hintStyle: TextStyle(
          color: AppColor.dGray,
          fontSize: 13,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.highlight_remove,color: AppColor.dGray,size: 20,),
        ),
      ),),
  ),
);


