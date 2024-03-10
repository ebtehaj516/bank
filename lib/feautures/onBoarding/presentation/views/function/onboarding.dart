
import '../../../../../core/database/cash/cache_helper.dart';
import '../../../../../core/services/service_locator.dart';

void onBoardingVisited(){
  getIt<CacheHelper>().saveData(key: 'isOnboardingVisited',value: true);
}