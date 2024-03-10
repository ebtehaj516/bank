import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_banking/core/widgets/card_widget.dart';
import 'package:light_banking/feautures/auth/presentation/widgets/custom_text_field.dart';
import '../../core/utils/app_strings.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/stack_widget.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: appBarWidgetOne(context,AppStrings.addNewCard,),
          ),),
          SliverToBoxAdapter(
            child: Stack(children:[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    card(),
                    CustomTextField(text: AppStrings.cardholderName, icon: FontAwesomeIcons.circleUser),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Expanded(
                            child: CustomTextField(text: AppStrings.expiryDate,)),
                        SizedBox(width: 95,),
                        Expanded(
                            child: CustomTextField(text: AppStrings.cVV,)),

                      ],
                    ),
                   CustomTextField(text: AppStrings.cardNumber, icon: FontAwesomeIcons.paypal,image: true,),

                  ],

                ),
              ),
              position(1.0,-180.0,850.0),

            ] ),
          )


        ],
      ),
    );
  }
}
