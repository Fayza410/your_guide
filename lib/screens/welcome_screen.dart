import 'package:flutter/material.dart';
import 'package:your_guide/screens/login_screen.dart';
import 'package:your_guide/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName="Welcome";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children:[
            SizedBox(height: 80,),
            Image(image: AssetImage('assets/logo1.png'),width: 150,height: 200,),
            SizedBox(height: 70,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context)=> LogInScreen()));
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: <Color>[Color(0Xff102A71), Color(0XFF001840)]
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 400, height: 50,
                    child: const Center(
                        child: Text('Login',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap:(){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context)=> SignUpScreen()));
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: <Color>[Color(0Xff102A71), Color(0XFF001840)]
                        ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    width: 400,
                    height: 50,
                    child: const Center(
                        child: Text('Sign Up',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
