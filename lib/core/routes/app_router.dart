import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:light_banking/core/services/service_locator.dart';
import 'package:light_banking/feautures/Transctions/presentation/view/history.dart';
import 'package:light_banking/feautures/Transctions/presentation/view/request_money.dart';
import 'package:light_banking/feautures/Transctions/presentation/view/send_money.dart';
import 'package:light_banking/feautures/Transctions/presentation/view/transction_history.dart';
import 'package:light_banking/feautures/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:light_banking/feautures/auth/presentation/views/change_password_view.dart';
import 'package:light_banking/feautures/auth/presentation/views/sign_in_view.dart';
import 'package:light_banking/feautures/auth/presentation/views/sign_up_view.dart';
import 'package:light_banking/feautures/auth/presentation/views/terms_and_condition.dart';
import 'package:light_banking/feautures/card/add_card_view.dart';
import 'package:light_banking/feautures/card/card_view.dart';
import 'package:light_banking/feautures/card/my_card_view.dart';
import 'package:light_banking/feautures/home/presentation/views/home_view.dart';
import 'package:light_banking/feautures/profile/presentation/views/edit_profile.dart';
import 'package:light_banking/feautures/search/persentation/view/search_language.dart';
import 'package:light_banking/feautures/search/persentation/view/search_view.dart';
import 'package:light_banking/feautures/settings/presentation/views/setting_view.dart';
import 'package:light_banking/feautures/splach/presentation/views/splash_view.dart';
import 'package:light_banking/feautures/statistics/presentation/view/statistics_view.dart';

import '../../feautures/onBoarding/presentation/views/onboarding_view.dart';
import '../../feautures/profile/presentation/views/profile_view.dart';
import '../widgets/bottom_navigation_bar.dart';

final GoRouter router = GoRouter(
  routes: [
GoRoute(
path: '/',
  builder: (context, state) =>const SplashView(),

),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) =>const OnBoardingView(),

    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) =>BlocProvider(
        create: (context)=>getIt<AuthCubit>(),
          child: const SignupView()),

    ),
    GoRoute(
      path: '/signIn',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const SignInView()),

    ),
    GoRoute(
      path: '/changePassword',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const ChangePassword()),

    ),
    GoRoute(
      path: '/termsAndCondition',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const TermsAndCondition()),

    ),
    GoRoute(
      path: '/profileView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const ProfileView()),

    ),
    GoRoute(
      path: '/editProfile',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const EditProfile()),

    ),

    GoRoute(
      path: '/settingView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const SettingView()),

    ),
    GoRoute(
      path: '/searchView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const SearchView()),

    ),
    GoRoute(
      path: '/searchLanguage',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const SearchLanguage()),

    ),
    GoRoute(
      path: '/statisticView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const StatisticView()),

    ),
    GoRoute(
      path: '/cardView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const CardView()),

    ),
    GoRoute(
      path: '/addCard',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const AddCard()),

    ),
    GoRoute(
      path: '/myCardView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const MyCardView()),

    ),

    GoRoute(
      path: '/homeView',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const HomeView()),

    ),
    GoRoute(
      path: '/homePage',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const HomePage()),

    ),
    GoRoute(
      path: '/transactionHistory',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const TransactionHistory()),

    ),
    GoRoute(
      path: '/sendMoney',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const SendMoney()),

    ),
    GoRoute(
      path: '/requesetMoney',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const RequesetMoney()),

    ),
    GoRoute(
      path: '/history',
      builder: (context, state) =>BlocProvider(
          create: (context)=>getIt<AuthCubit>(),
          child:const History()),

    ),
  ],);
