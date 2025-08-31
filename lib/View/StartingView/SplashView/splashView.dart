import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartproj/routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.offAndToNamed(AppRoutes.OnboardingScreen);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("SplashView"),),
    );
  }
}
