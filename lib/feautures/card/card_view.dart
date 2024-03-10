import 'package:flutter/material.dart';
import 'package:light_banking/core/functions/navigation.dart';
import 'package:light_banking/core/widgets/card_widget.dart';
import 'package:light_banking/core/widgets/custom_btn.dart';

import '../../core/utils/app_strings.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/stack_widget.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: appBarWidgetOne(context,AppStrings.allCards,),
          ),),
          SliverToBoxAdapter(child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    card(),
                    card(),
                  ],
                ),
              ),
              position(1.0,-180.0,850.0),
            ],
          )),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomBtn(text: AppStrings.addCard+" +",onPressed: (){
              customNavigate(context, '/addCard');
            },),
          ),)

        ],
      ),
    );
  }
}
