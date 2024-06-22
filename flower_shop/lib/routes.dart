import 'package:flutter/widgets.dart';
import 'package:health_care/mainpage.dart';
import 'package:health_care/screens/cart_screen/cart_screen.dart';
import 'package:health_care/screens/home_screen/home_screen.dart';
import 'package:health_care/screens/setting_screen/setting_screen.dart';
import 'package:health_care/screens/signin_screen/signin_screen.dart';
import 'package:health_care/screens/signup_screen/signup_screen.dart';
import 'package:health_care/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  Mainpage.routeName: (context) => const Mainpage(),
  CartScreen.routeName: (context) => const CartScreen(),
  SettingScreen.routeName: (context) => const SettingScreen(),
};
