import 'package:flutter/material.dart';

class Flutter extends StatelessWidget {
  const Flutter({super.key});
  static const String routName = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFEEEEEE),
        appBar: AppBar(
          title: Text('Flutter',style: TextStyle(
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
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Image(image: AssetImage('assets/img_59.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_60.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_58.png'),width: 100,height:100),
                      ],
                    ),
                  ]
              )
            ])
    );
  }
}
