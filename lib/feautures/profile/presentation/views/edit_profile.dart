import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/widgets/app_bar_widget.dart';
import 'package:light_banking/feautures/auth/presentation/widgets/custom_text_field.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
                slivers: [
                SliverToBoxAdapter(child: appBarWidgetOne(context, AppStrings.editProfile),),
                  SliverToBoxAdapter(child:userNameProfile()),
                  SliverToBoxAdapter(child:CustomTextField(text: AppStrings.fullName, icon: FontAwesomeIcons.circleUser,)),
                  SliverToBoxAdapter(child:CustomTextField(text: AppStrings.emailAddress, icon: Icons.email_outlined,)),
                  SliverToBoxAdapter(child:CustomTextField(text: AppStrings.phoneNumber, icon: Icons.phone,)),
                  SliverToBoxAdapter(child: Row(
                    children: [
                      Expanded(child: CustomTextField(text: AppStrings.birthDate,)),
                      SizedBox(width: 45,),
                      Expanded(child: CustomTextField(text: "")),
                      SizedBox(width: 45,),
                      Expanded(child: CustomTextField(text: "")),
                    ],
                  ),),
                  SliverToBoxAdapter(child:Padding(
                    padding: const EdgeInsets.only(top: 70,left: 108),
                    child: Text("Joined 28 Jan 2021",style: CustomTextStyles.poppins400style12,),
                  )),
                ] )));

  }
}

Widget userNameProfile()=>Padding(
  padding: const EdgeInsets.only(bottom: 30),
  child: Align(
    child: Column(
      children: [
        CircleAvatar(
            radius: 45,
            backgroundImage:AssetImage(Assets.logoProfile)),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21,bottom: 10),
              child: Text(AppStrings.userName,style: CustomTextStyles.poppins500style32.copyWith(fontSize: 17).apply(fontWeightDelta: 1),),
            ),
            Text(AppStrings.job,style: CustomTextStyles.poppins400style12.copyWith(color: AppColor.gray),) ,
          ],
        )
      ],
    ),
  ),
);

