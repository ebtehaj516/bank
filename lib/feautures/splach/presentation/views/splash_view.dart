import 'package:flutter/material.dart';
import 'package:light_banking/core/functions/navigation.dart';
import 'package:light_banking/core/services/service_locator.dart';
import 'package:light_banking/core/utils/app_strings.dart';
import 'package:light_banking/core/utils/app_text_style.dart';
import '../../../../core/database/cash/cache_helper.dart';
import '../../../../core/utils/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnboardingVisited=getIt<CacheHelper>().getData(key: "isOnboardingVisited",)??false;
    if(isOnboardingVisited==true){
      delayedNavigate(context,'/signIn');
    }else{

      delayedNavigate(context,'/onBoarding');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset(Assets.imagesLogo,width: 80,height: 79.94,),
           Text(AppStrings.appNAme,style: CustomTextStyles.poppins600style35,),
         ],
       )
      ),
    );
  }
}
void delayedNavigate(context,path){
  Future.delayed(const Duration(seconds: 3),
          (){
            customReplacementNavigate(context,path);
      }
  );
}