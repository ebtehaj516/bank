import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_text_style.dart';
import 'package:light_banking/feautures/statistics/presentation/widgets/line_chart_sample2.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/List View Widget.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/stack_widget.dart';
class StatisticView extends StatelessWidget {
  const StatisticView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: appBarWidgetTow(context,AppStrings.statistics,Icons.notifications_outlined,'/transactionHistory')),
              SliverToBoxAdapter(child: columnBalance(),),
              SliverToBoxAdapter(child:Line_Chart(),),
              SliverToBoxAdapter(child: rowWidget(AppStrings.transaction),),
              listViewWidgetWithoutPadding(),

            ],
          ),
      ),
    );
  }
}
Widget columnBalance()=>Column(
  children: [
    Text(AppStrings.currentBalance,style: CustomTextStyles.poppins400style12.copyWith(fontSize: 18),),
    Text("\$8,545.00",style: CustomTextStyles.poppins500style32.copyWith(fontSize: 26),),
  ],
);