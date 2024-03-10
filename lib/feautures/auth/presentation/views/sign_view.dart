import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/widgets/custom_btn.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/go_back_widget.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/have_acount.dart';
import '../widgets/sign Text Widget.dart';

class SignView extends StatelessWidget {
  const SignView({super.key, required this.text, required this.text1, required this.text2, this.router,});
  final String text,text1,text2;
  final String? router;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
             SliverToBoxAdapter(

                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child:goBack(context),
                  ),
                ),
              ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 45,),
            ),
            text==AppStrings.signUp?
            const SliverToBoxAdapter(
              child: SignTextWidget(text: AppStrings.signUp),
            ): const SliverToBoxAdapter(
              child: SignTextWidget(text: AppStrings.signIn),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 11,),
            ),
            SliverToBoxAdapter(child:text==AppStrings.signUp?signUp():signIn()),
            SliverToBoxAdapter(child: Padding(
              padding: const EdgeInsets.only(top:40,bottom: 29),
              child: CustomBtn(text: text,onPressed: (){
                customNavigate(context,"/homePage");
              },),
            ),),
            SliverToBoxAdapter(
              child: Align(child: HaveAnAccount(text1: text1,text2: text2,onTap: (){
                customNavigate(context,"/$router");//$router
              })),
            )



          ],
        ),
      ),
    );

  }
  Widget signIn(){
    return const Column(children:[
      CustomTextField(text:AppStrings.emailAddress,icon:FontAwesomeIcons.envelope ,),
      CustomTextField(text:AppStrings.password,icon: Icons.lock_outline,field: true,)
    ],);
  }
  Widget signUp(){
    return Column(children: [
      const CustomTextField(text: AppStrings.fullName,icon: FontAwesomeIcons.circleUser,),
     const  CustomTextField(text: AppStrings.phoneNumber,icon: FontAwesomeIcons.phone,),
      signIn(),
    ],);
  }

}

