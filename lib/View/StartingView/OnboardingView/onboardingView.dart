import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartproj/routes/routes.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: InkWell(onTap: (){
        Get.offAndToNamed(AppRoutes.SignInScreen);
      },child: Text("OnboardingView")),),
    );
  }
}
