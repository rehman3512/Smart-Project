import 'package:get/get.dart';
import 'package:smartproj/View/AuthView/SignInView/signInView.dart';
import 'package:smartproj/View/AuthView/SignUpView/signUpView.dart';
import 'package:smartproj/View/HomeView/smartHome.dart';
import 'package:smartproj/View/StartingView/OnboardingView/onboardingView.dart';
import 'package:smartproj/View/StartingView/SplashView/splashView.dart';

class AppRoutes {
  static String SplashScreen = "/";
  static String OnboardingScreen = "/OnboardingScreen";
  static String SignInScreen = "/SignInScreen";
  static String SignUpScreen = "/SignUpScreen";
  static String SmartHomeScreen = "/SmartHomeScreen";
  static final routes=[
    GetPage(name: SplashScreen, page: ()=>SplashView()),
    GetPage(name: OnboardingScreen, page: ()=>OnboardingView()),
    GetPage(name: SignInScreen, page: ()=>SignInView()),
    GetPage(name: SignUpScreen, page: ()=>SignUpView()),
    GetPage(name: SmartHomeScreen, page: ()=>SmartHome())
  ];
}