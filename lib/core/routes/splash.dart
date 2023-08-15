import 'package:flutter/material.dart';
import 'package:india/core/routes/onboarding.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, OnboardingPage.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      child: SizedBox(
        child: Image.asset("assets/splash.gif"),
      ),
    );
  }
}
