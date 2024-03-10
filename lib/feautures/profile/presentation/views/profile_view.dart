import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/utils/app_assets.dart';
import 'package:light_banking/core/utils/app_colors.dart';
import 'package:light_banking/core/widgets/icon_with_cricleAvater_widget.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/go_back_widget.dart';
import '../../../../core/widgets/single_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: appBarWidgetTow(context,AppStrings.profile,Icons.personal_injury_outlined,"/editProfile")),
              SliverToBoxAdapter(child: userNameProfile(),),
              SliverToBoxAdapter(child: SingleItem(FontAwesomeIcons.circleUser,AppStrings.personalInformation,true),),
              SliverToBoxAdapter(child: GestureDetector(
                  onTap: (){
                    customNavigate(context,'/sendMoney');
                  },

                  child: SingleItem(Icons.money_outlined,AppStrings.paymentPreferences,true)),),
              SliverToBoxAdapter(child: GestureDetector(
                  onTap: (){
                    customNavigate(context,'/cardView');
                  },
                  child: SingleItem(Icons.credit_score_outlined,AppStrings.bankSandCards,true)),),
              SliverToBoxAdapter(child: SingleItem(Icons.notifications_outlined,AppStrings.notifications,false),),
              SliverToBoxAdapter(child: SingleItem(Icons.chat_outlined,AppStrings.messageCenter,true),),
              SliverToBoxAdapter(child: SingleItem(Icons.location_on_outlined,AppStrings.address,true),),
              SliverToBoxAdapter(child: GestureDetector(
                onTap: (){
                  customNavigate(context,"/settingView");
                },
                  child: SingleItem(Icons.settings_outlined,AppStrings.settings,true)),),
   ] )));
  }
}
Widget userNameProfile()=>Padding(
  padding: const EdgeInsets.only(bottom: 15),
  child: Row(
    children: [
  Align(
    alignment: Alignment.topLeft,
    child: CircleAvatar(
      radius: 35,
    backgroundImage:AssetImage(Assets.logoProfile)),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 22),
    child: Column(
    children: [
    Text(AppStrings.userName,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 17).apply(fontWeightDelta: 1),),
    Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Text(AppStrings.job,style: CustomTextStyles.poppins400style12.copyWith(color: AppColor.gray),),
    ) ,
    ],
    ),
  )
    ],
  ),
);

