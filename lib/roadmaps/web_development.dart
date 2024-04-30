import 'package:flutter/material.dart';
import 'package:your_guide/roadmaps/back_end.dart';
import 'package:your_guide/roadmaps/front_end.dart';

class WebDevelopment extends StatefulWidget {
  static const String routeName='WebDevelopment';
  @override
  State<WebDevelopment> createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Development ',
          style: TextStyle(
            color:Color(0xff001842),
            fontSize: 20,
            fontFamily: 'Courgette',

          ),),
        elevation: 0,
        flexibleSpace: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Color(0xfff5c400),
          Color(0xffffdc5f),
        ])
        ),
        ),
        leading:  IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0XFF001840),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [SizedBox(height: 95),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,FrontEnd.routName);
              },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0XFF001840),
                      Color(0XFF102A71),
                    ]),
                    borderRadius: BorderRadius.circular(5)
                ),
                width: 255,
                height: 70,
                child: Center(child: Text('Front End',
                  style: TextStyle(fontSize: 20,
                      color: Colors.white),
                ),),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,BackEnd.routName);
              },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0XFF001840),
                      Color(0XFF102A71),
                    ]),
                    borderRadius: BorderRadius.circular(5)
                ),
                width: 255,
                height: 70,
                child: Center(child: Text('Back End ',
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