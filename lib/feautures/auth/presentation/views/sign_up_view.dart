import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_strings.dart';
import 'package:light_banking/feautures/auth/presentation/views/sign_view.dart';
import '../widgets/sign Text Widget.dart';
class SignupView extends StatelessWidget {

  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SignView(text: AppStrings.signUp,text1: AppStrings.alreadyAccount,text2:AppStrings.signIn,router: "signIn" ,);
  }
}

