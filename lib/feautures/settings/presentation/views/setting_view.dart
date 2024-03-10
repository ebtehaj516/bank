import 'package:flutter/material.dart';
import 'package:light_banking/core/functions/navigation.dart';
import 'package:light_banking/core/utils/app_colors.dart';
import 'package:light_banking/core/utils/app_text_style.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/single_item.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
      slivers: [
          SliverToBoxAdapter(child: appBarWidgetTow(context,AppStrings.settings,Icons.logout_outlined,"/")),
        SliverToBoxAdapter(child:text(AppStrings.general)),
        SliverToBoxAdapter(child: GestureDetector(
          onTap: (){
            customNavigate(context, '/searchLanguage');
          },
            child: SingleItem1(AppStrings.language)),),
        SliverToBoxAdapter(child: GestureDetector(
            onTap: (){
              customNavigate(context, '/profileView');
            },
            child: SingleItem1(AppStrings.myProfile)),),
        SliverToBoxAdapter(child: SingleItem1(AppStrings.contactUs),),
        SliverToBoxAdapter(child:Padding(
          padding: const EdgeInsets.only(top: 31),
          child: text(AppStrings.security),
        )),
        SliverToBoxAdapter(child: GestureDetector(
          onTap: (){
            customNavigate(context, "/changePassword");
          },
            child: SingleItem1(AppStrings.changePassword)),),
        SliverToBoxAdapter(child: SingleItem1(AppStrings.privacyPolicy),),
        SliverToBoxAdapter(child:textnormal(AppStrings.quetionShare),),
      SliverToBoxAdapter(child: Padding(
        padding: const EdgeInsets.only(top:22),
        child: Text(AppStrings.biometric,style: CustomTextStyles.poppins500style14.copyWith(color: AppColor.black).apply(fontWeightDelta: 1)),
      ),)


      ],
      ),
    ),
    );
  }
}
 Widget text(text,){
  return Padding(
      padding: const EdgeInsets.only(bottom: 9,right: 20),
   child: Text(text,style: CustomTextStyles.poppins400style14.copyWith(color: AppColor.dGray),));
 }
Widget textnormal(text,){
  return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 9,right: 20),
      child: Text(text,style: CustomTextStyles.poppins400style12.copyWith(color: AppColor.dGray),));
}