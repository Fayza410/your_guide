import 'package:flutter/material.dart';

class OnBoardingModel{
  String image;
  String text;


  OnBoardingModel({
    required this.image,
    required this.text,

  });
}
List<OnBoardingModel> screens = <OnBoardingModel>[
  OnBoardingModel(
    image: 'assets/splash screen 2.png',
    text: 'Here you can learn new programming skills ',

  ),
  OnBoardingModel(
    image: 'assets/splash screen3.png',
    text: 'Simplest way to your professional CV',

  ),
  OnBoardingModel(
    image: 'assets/splash screen 4.png',
    text: 'Guide you to the best companies',

  ),


];
