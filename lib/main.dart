import 'package:flutter/material.dart';
import 'package:your_guide/OnBoarding/onboarding_model.dart';
import 'package:your_guide/constants/image_screen.dart';
import 'package:your_guide/roadmaps/artificial_intelligence.dart';
import 'package:your_guide/roadmaps/back_end.dart';
import 'package:your_guide/roadmaps/cs50.dart';
import 'package:your_guide/roadmaps/flutter.dart';
import 'package:your_guide/roadmaps/front_end.dart';
import 'package:your_guide/roadmaps/web_development.dart';
import 'package:your_guide/screens/cv_options.dart';
import 'package:your_guide/screens/login_screen.dart';
import 'package:your_guide/screens/signup_screen.dart';
import 'package:your_guide/screens/splash_screen.dart';
import 'package:your_guide/screens/video_cv.dart';
import 'package:your_guide/screens/welcome_screen.dart';
import 'package:your_guide/tabs/basic_roadmap.dart';
import 'package:your_guide/tabs/home_tab.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        useMaterial3: false
    ),
      initialRoute: SplashScreen.routeName,
      routes: {

        SplashScreen.routeName : (context) => SplashScreen(),
        OnBoardingScreen.routeName : (context) => OnBoardingScreen(),
        LogInScreen.routeName : (context) => LogInScreen(),
        SignUpScreen.routeName : (context) => SignUpScreen(),
        WelcomeScreen.routeName : (context) => WelcomeScreen(),
        RoadMap.routeName: (context) => RoadMap(),
        CS50.routeName: (context) => CS50(),
        ArtificialIntelligence.routeName: (context) => ArtificialIntelligence(),
        WebDevelopment.routeName: (context) => WebDevelopment(),
        HomeTab.routeName: (context) => HomeTab(),
        CvOptions.routeName: (context) => CvOptions(),
        ImageScreen.routeName: (context) => ImageScreen(),
        VideoSelector.routeName: (context) => VideoSelector(),
        FrontEnd.routName:(context)=>FrontEnd(),
        BackEnd.routName:(context)=>BackEnd(),
        Flutter.routName:(context)=>Flutter(),




      },

    );
  }
}