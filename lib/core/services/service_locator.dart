import 'package:get_it/get_it.dart';
import 'package:light_banking/feautures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';

import '../database/cash/cache_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());

}