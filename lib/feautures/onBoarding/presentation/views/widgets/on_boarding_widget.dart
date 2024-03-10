import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_text_style.dart';
import 'package:light_banking/feautures/onBoarding/data/models/on_boarding_model.dart';
import 'custom_smooth_page_Indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
   OnBoardingWidgetBody({super.key, required this.controller, this.onPageChange});
final PageController controller;
final Function(int)?onPageChange;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
              padding: const EdgeInsets.only(top: 90,),
              child: PageView.builder(
      physics: BouncingScrollPhysics(),
      controller: controller,
      onPageChanged: onPageChange,
      itemCount: OnBoardingData.length,
        itemBuilder: (context,index){
        return Column(
          children: [
            Expanded(
              child: Container(
                width: 335,
                height: 248,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage(OnBoardingData[index].ImagePath),
                    fit: BoxFit.fill,
                  ),
      
                ),
              ),
            ),
            SizedBox(
              height:72.47 ,
            ),
            CustomSmoothPageIndex(controller: controller,),
            SizedBox(height: 36),
            Text(OnBoardingData[index].title,style: CustomTextStyles.poppins600style35.copyWith(fontSize: 26,),textAlign: CustomTextStyles.textAlign,),
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: Text(OnBoardingData[index].subtitle,style: CustomTextStyles.poppins400style14,textAlign: CustomTextStyles.textAlign,maxLines: 2,),
            ),
      
             SizedBox(height: 10,),
      
          ],
        );
        }
      ,),
            ),
    );
  }
}

