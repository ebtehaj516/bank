import 'package:flutter/material.dart';
import 'package:light_banking/core/functions/navigation.dart';
import 'package:light_banking/core/utils/app_strings.dart';
import 'package:light_banking/core/utils/app_text_style.dart';
import 'package:light_banking/core/widgets/app_bar_widget.dart';
import 'package:light_banking/core/widgets/custom_btn.dart';
import 'package:light_banking/feautures/auth/presentation/widgets/custom_text_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
           SliverToBoxAdapter(child: appBarWidgetOne(context, AppStrings.changePassword),),
            SliverToBoxAdapter(
              child: CustomTextField(text: AppStrings.currentPassword,icon: Icons.lock_outline,field: true,),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(text: AppStrings.newPassword,icon: Icons.lock_outline,field: true,),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: CustomTextField(text: AppStrings.confirmPassword,icon: Icons.lock_outline,field: true,),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 39),
                  child: Text(AppStrings.passwordsMustMatch,style: CustomTextStyles.poppins400style12,))
            ),
            SliverToBoxAdapter(
              child: CustomBtn(text: AppStrings.changePassword,onPressed: (){
                customNavigate(context, "/termsAndCondition");
              },),
            ),
          ],
        ),
      ),
    );
  }
}
