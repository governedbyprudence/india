import 'package:flutter/material.dart';
import 'package:india/core/routes/home.dart';
import 'package:india/core/routes/onboarding.dart';
import 'package:india/core/routes/splash.dart';
import 'dart:io';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'India',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
        },),
        primarySwatch: Colors.orange,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>const SplashScreen(),
        OnboardingPage.routeName:(context)=> const OnboardingPage(),
        HomePage.routeName:(context)=> const HomePage(),
      },
    );
  }
}
