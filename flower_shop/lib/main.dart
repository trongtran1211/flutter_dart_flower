import 'package:flutter/material.dart';
import 'package:health_care/theme.dart';
import 'routes.dart';
import 'package:health_care/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: routes,
      theme: AppTheme.lightTheme(context),
    );


  }
}
