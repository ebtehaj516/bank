import 'package:flutter/material.dart';
import 'package:light_banking/feautures/onBoarding/data/models/on_boarding_model.dart';
import 'package:light_banking/feautures/onBoarding/presentation/views/function/onboarding.dart';
import 'package:light_banking/feautures/onBoarding/presentation/views/widgets/on_boarding_widget.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_btn.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller=PageController(initialPage: 0);
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
           // physics: BouncingScrollPhysics(),
            children: [
              OnBoardingWidgetBody(controller: _controller,onPageChange: (index){
                setState(() {
                  currentIndex=index;
                });
              },),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 40),
                child: CustomBtn(text: AppStrings.next,onPressed:(){
                  currentIndex==OnBoardingData.length-1?{
                    onBoardingVisited(),
                  customReplacementNavigate(context,'/signIn')}:
                  _controller.nextPage(duration: const Duration(microseconds: 200), curve: Curves.bounceIn);

                }),
              ),


            ],
          ),
        )
      ),
    );
  }
}
