import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/utils/app_text_style.dart';
import 'package:light_banking/core/widgets/custom_btn.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../auth/presentation/widgets/custom_text_field.dart';
import '../widget/card_view_widget.dart';

class RequesetMoney extends StatelessWidget {
  const RequesetMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: appBarWidgetOne(context, AppStrings.requestMoney),),
                  SliverToBoxAdapter(child:CustomTextField(text: AppStrings.payerName, icon: FontAwesomeIcons.circleUser,)),
                  SliverToBoxAdapter(child:CustomTextField(text: AppStrings.emailAddress, icon: Icons.email_outlined,)),
                  SliverToBoxAdapter(child:CustomTextField(text: AppStrings.description, icon: Icons.phone,)),
                  SliverToBoxAdapter(child: Row(
                    children: [
                      Expanded(
                        flex:2,
                      child: CustomTextField(text: AppStrings.monthlyDueBy,)),
                      SizedBox(width: 45,),
                      Expanded(child: CustomTextField(text: "")),
                      SizedBox(width: 45,),
                      Expanded(child: CustomTextField(text: "")),
                    ],
                  ),),
                  SliverToBoxAdapter(child: Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 100),
                    child: cardView(),
                  ),),
                  SliverToBoxAdapter(child: CustomBtn(text: AppStrings.requestMoney,onPressed: (){},),)
                ] )));
  }
}
