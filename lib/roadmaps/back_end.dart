import 'package:flutter/material.dart';

class BackEnd extends StatelessWidget {
  static const String routName = 'BackEnd';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFEEEEEE),
        appBar: AppBar(
          title: Text('BackEnd',
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
                    Text('Programming languages', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_29.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_30.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_31.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_32.png'),width: 100,height:100),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Frameworks', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_37.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_38.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_39.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_40.png'),width: 80,height:80),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Database', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_41.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_42.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_43.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_44.png'),width: 80,height:80),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('APIs', style: TextStyle(color: Color(0XFF022051),fontSize: 20,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Image(image: AssetImage('assets/img_45.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_46.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_47.png'),width: 80,height:80),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/img_48.png'),width: 80,height:80),
                      ],
                    ),
                  ]

              ),])
    );
  }
}
