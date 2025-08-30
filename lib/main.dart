import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartproj/routes/routes.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ,
      // initialRoute: "/",
      // getPages: [
      //   // key : value
      //   GetPage(name: "/", page: ()=>SplashView()),
      //   GetPage(name: "/SignInScreen", page: ()=>SignInview()),
      //   GetPage(name: "/SmartHomeScreen", page: ()=>SmartHome()),
      //   GetPage(name: "/SignUpScreen", page: ()=>SignUpView()),
      // ],
      initialRoute: AppRoutes.SplashScreen,
      getPages: AppRoutes.routes,

    );
  }
}
