import 'package:flutter/material.dart';

class ArtificialIntelligence extends StatefulWidget {
  static const String routeName='ArtificialIntelligence';
  @override
  State<ArtificialIntelligence> createState() => _ArtificialIntelligeneState();
}

class _ArtificialIntelligeneState extends State<ArtificialIntelligence> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Artificial Intelligene',style: TextStyle(
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
                        children: [
                          SizedBox(width: 55,),
                          Image(image: AssetImage('assets/img_49.png'),width: 80,height:80),
                          SizedBox(width: 20,),
                          Image(image: AssetImage('assets/img_50.png'),width: 80,height:80),
                          SizedBox(width: 20,),
                          Image(image: AssetImage('assets/img_51.png'),width: 80,height:80),
                        ]
                    ),
                    SizedBox(height: 30,),
                    Text('AI and Data Science', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Image(image: AssetImage('assets/img_56.png'),width: 80,height:80),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_53.png'),width: 80,height:80),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_54.png'),width: 80,height:80),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [

                        SizedBox(width: 55,),
                        Image(image: AssetImage('assets/img_57.png'),width: 80,height:80),


                      ],
                    ),
                  ]
              )
            ]));
  }
}