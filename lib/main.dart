import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';
import 'core/database/cash/cache_helper.dart';
import 'core/routes/app_router.dart';
import 'core/services/service_locator.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const LightBanking());
}

class LightBanking extends StatelessWidget {
  const LightBanking({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig:router,
    );
  }
}

