import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:light_banking/generated/assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/List View Widget.dart';
import '../../../../core/widgets/bar_icon_widget.dart';
import '../../../../core/widgets/card_widget.dart';
import '../../../../core/widgets/icon_with_cricleAvater_widget.dart';
import '../../../../core/widgets/stack_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: CustomScrollView(
  slivers: [
    SliverToBoxAdapter(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: userNameProfile(context),
    ),),
    SliverToBoxAdapter(child: stack(),),
   listViewWidget(),

  ],
),
    );
  }

}
Widget userNameProfile(context)=>Padding(
  padding: const EdgeInsets.only(top: 58,bottom: 25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: CircleAvatar(
            radius: 35,
            backgroundImage:AssetImage(Assets.imagesLogoProfile)),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Text(AppStrings.welcome,style: CustomTextStyles.poppins400style12.copyWith(color: AppColor.gray),),
            ),

            Text(AppStrings.userName,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 18).apply(fontWeightDelta: 1),) ,
          ],
        ),
      ),
      goPageIcon(context,Icons.search,'/searchView'),
    ],
  ),
);




