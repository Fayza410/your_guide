import 'package:flutter/material.dart';
import 'package:your_guide/constants/image_screen.dart';
import 'package:your_guide/screens/video_cv.dart';

class CvOptions extends StatefulWidget {
  static const String routeName='CvOptions';
  @override
  State<CvOptions> createState() => _CvOptionsState();
}

class _CvOptionsState extends State<CvOptions> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('CV Options',
            style: TextStyle(
              color: Color(0XFF001840),
              fontSize: 20,
              fontFamily: 'Courgette',
            )),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0XFFF5C400),
                Color(0XFFFFDC5F)
              ])
          ),
        ),
        backgroundColor: Colors.transparent,

      ),
      body: Center(
        child: Column(
          children: [SizedBox(height: 95),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,ImageScreen.routeName);
              },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0XFF001840),
                      Color(0XFF102A71),
                    ]),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 200,
                height: 60,
                child: Center(child: Text('Fill The From',
                  style: TextStyle(fontSize: 20,
                      color: Colors.white),
                ),),
              ),
            ),
            SizedBox(height: 30),
            InkWell(onTap: (){
              Navigator.pushNamed(context,VideoSelector.routeName);
            },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0XFF001840),
                      Color(0XFF102A71),
                    ]),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 200,
                height: 60,
                child: Center(child: Text('Video CV',
                  style: TextStyle(fontSize: 20,
                      color: Colors.white),
                ),),


              ),
            ),

          ],
        ),
      ),

    );

  }
}