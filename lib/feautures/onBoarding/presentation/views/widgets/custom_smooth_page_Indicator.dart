import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomSmoothPageIndex extends StatelessWidget {
  const  CustomSmoothPageIndex({super.key,required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(controller: controller, count: 3,
      effect:  ExpandingDotsEffect(
        activeDotColor: AppColor.primaryColor,
        dotWidth: 6,
        dotHeight:  6,
        dotColor:  AppColor.primaryColor.withOpacity(0.3),

      ),
    );
  }
}