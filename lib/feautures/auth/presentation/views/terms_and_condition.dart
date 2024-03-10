import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';
import 'package:light_banking/core/widgets/app_bar_widget.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/go_back_widget.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
           SliverToBoxAdapter(child:appBarWidgetOne(context, AppStrings.termsAndCondition),),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 4,),
                child: Text(AppStrings.textOfTermsAndCondition,style: CustomTextStyles.poppins400style14.copyWith(color: AppColor.lightBlack).apply(fontWeightDelta: 1),),
              ),
            ),
          ],),),);
  }


}
