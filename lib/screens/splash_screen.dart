import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:your_guide/OnBoarding/onboarding_model.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName="Splash";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(duration: 300,
      splash: Container(
        child: Image.asset("assets/logo2.png"),
      ),
      animationDuration: Duration(seconds: 3),
      centered: true,
      curve: Curves.bounceIn,
      splashIconSize: 300,
      nextScreen: OnBoardingScreen(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Colors.white,
    );
  }

}
