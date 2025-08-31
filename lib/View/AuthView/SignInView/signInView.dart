import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartproj/routes/routes.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextButton(onPressed: (){
        Get.offAndToNamed(AppRoutes.SmartHomeScreen);
      }, child: Text("SignInView"),)),
    );
  }
}
