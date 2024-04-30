import 'package:flutter/material.dart';

class FrontEnd extends StatelessWidget {

  static const String routName = 'FrontEnd';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFEEEEEE),
        appBar: AppBar(
          title: Text('FrontEnd ',
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
                        Image(image: AssetImage('assets/img_19.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_20.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_21.png'),width: 100,height:100),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Frameworks', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Image(image: AssetImage('assets/img_25.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_23.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_26.png'),width: 100,height:100),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Styles', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Image(image: AssetImage('assets/img_26.png'),width: 100,height:100),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_27.png'),width: 100,height:100),
                      ],
                    ),
                  ]

              ),]));
  }
}
