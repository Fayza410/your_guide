import 'package:flutter/material.dart';

class CS50 extends StatefulWidget {
  static const String routeName='CS50';
  @override
  State<CS50> createState() => _CS50State();
}

class _CS50State extends State<CS50> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFEEEEEE),
        appBar: AppBar(
          title: Text('CS50',style: TextStyle(
            color: Color(0xff001842),
            fontSize: 20,
            fontFamily: 'Courgette',
          ),),
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
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
        body: ListView(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Text('Basics', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/img_63.png'),width: 80,height:80),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_61.png'),width: 80,height:80),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_62.png'),width: 80,height:80),
                      ],
                    ),
                  ])
            ])

    );
  }
}