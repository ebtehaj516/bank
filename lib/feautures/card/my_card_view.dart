import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';
import 'package:light_banking/core/utils/app_text_style.dart';
import 'package:light_banking/feautures/card/widget/progress_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../core/utils/app_strings.dart';
import '../../core/widgets/List View Widget.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/bar_icon_widget.dart';
import '../../core/widgets/card_widget.dart';
import '../../core/widgets/stack_widget.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: appBarWidgetTow(context,AppStrings.myCards,Icons.add_outlined,"/addCard"),
            ),
          ),
          SliverToBoxAdapter(child: Stack(
              children: [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
            child: card(),
          ),
                position(-40.0,-280.0,850.0),

              ])


      ),
          listViewWidget(),
          SliverToBoxAdapter(child: progress(),),
      ]
            ));
  }
}
