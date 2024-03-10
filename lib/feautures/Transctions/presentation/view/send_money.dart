
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/widgets/card_widget.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../../../../core/widgets/stack_widget.dart';
import '../../../auth/presentation/widgets/custom_text_field.dart';
import '../widget/card_view_widget.dart';
class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: appBarWidgetOne(context, AppStrings.sendMoney),
              ),),
              SliverToBoxAdapter(

                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20),
                      child:SizedBox(
                          height: 360.0,
                          width: 370.0,
                          child: AnotherCarousel(
                            boxFit: BoxFit.fill,
                            showIndicator: false,
                            images: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    card(),
                                    cardViewSend(),


                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  card(),
                                  cardViewSend(),


                                ],
                              ),
                            ],
                          )
                      ),


                    ),
                    position(1.0,-260.0,850.0),
                  ],
                ),
              ),

              SliverToBoxAdapter(child:  Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 74,left: 20,right: 20),
                child: cardView(),
              ),),
              SliverToBoxAdapter(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: CustomBtn(text: AppStrings.requestMoney,onPressed: (){},),
              ),)

            ] ));
  }
}
