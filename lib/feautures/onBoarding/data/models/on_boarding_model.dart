import 'package:light_banking/core/utils/app_strings.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingModel {
  final String ImagePath;
  final String title;
  final String subtitle;

  OnBoardingModel({required this.ImagePath, required this.title, required this.subtitle});

}
List<OnBoardingModel> OnBoardingData=[
  OnBoardingModel(ImagePath: Assets.imagesOnboarding1 , title:AppStrings.titleOfOnBoarding1, subtitle: AppStrings.subtitleOfOnBoarding1),
  OnBoardingModel(ImagePath: Assets.imagesOnboarding2 , title:AppStrings.titleOfOnBoarding2, subtitle: AppStrings.subtitleOfOnBoarding2),
  OnBoardingModel(ImagePath: Assets.imagesOnboarding3 , title:AppStrings.titleOfOnBoarding3, subtitle: AppStrings.subtitleOfOnBoarding3),
];