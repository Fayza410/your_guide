import 'package:flutter/material.dart';
import 'package:your_guide/roadmaps/artificial_intelligence.dart';
import 'package:your_guide/roadmaps/cs50.dart';
import 'package:your_guide/roadmaps/flutter.dart';
import 'package:your_guide/roadmaps/web_development.dart';

class RoadMap extends StatefulWidget {
  static const String routeName='/';
  @override
  State<RoadMap> createState() => _RoadMapState();
}

class _RoadMapState extends State<RoadMap> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context,CS50.routeName);
              },
              child: Ink(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 400,
                        height:188,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.transparent,
                          image: DecorationImage(
                            image:AssetImage('assets/img_1.png'),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(onTap: () {
              Navigator.pushNamed(context,ArtificialIntelligence.routeName);
            },
              child: Ink(
                child: Stack(
                  children: [
                    Container(alignment: Alignment.centerLeft,
                      width: 400,
                      height:200,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image:AssetImage('assets/img_2.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(onTap: () {
              Navigator.pushNamed(context,WebDevelopment.routeName);
            },
              child: Ink(
                child: Stack(
                  children: [
                    Container(alignment: Alignment.bottomLeft,
                      width:400,
                      height:188,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image:AssetImage('assets/img_3.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(onTap: () {
              Navigator.pushNamed(context,Flutter.routName);
            },
              child: Ink(
                child: Stack(
                  children: [
                    Container(alignment: Alignment.bottomLeft,
                      width: 500,
                      height: 200,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image:AssetImage('assets/img_18.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}