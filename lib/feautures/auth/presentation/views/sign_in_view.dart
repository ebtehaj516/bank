import 'package:flutter/material.dart';
import 'package:light_banking/feautures/auth/presentation/views/sign_view.dart';
import '../../../../core/utils/app_strings.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SignView(text:AppStrings.signIn,text1: AppStrings.newUser,text2:AppStrings.signUp ,router: "signUp",);
  }
}
