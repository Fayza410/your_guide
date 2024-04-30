import 'package:flutter/material.dart';
import 'package:your_guide/constants/buttom_nav_bar.dart';
import 'package:your_guide/screens/signup_screen.dart';

class LogInScreen extends StatelessWidget {

  static const String routeName="LogIn";

  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
            const Image(image: AssetImage('assets/logo1.png'),
              height: 200, width: 70,),
            const SizedBox(height: 40,),
            const Row(
              children: [
                Text('Sign in your account',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF001840),
                    fontFamily: ('Kokoro'),
                  ),),
              ],
            ),
            const SizedBox(height: 33,),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined,
                    color: Color(0XFFF5C400),
                    size: 30,),
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Color(0XFF022051),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0XFF001840)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0XFF001840)
                      )
                  )),),
            const SizedBox(height: 20,),
            const TextField(

              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline_rounded,
                    color: Color(0XFFF5C400),
                    size: 30,),
                  suffixIcon: Icon(Icons.visibility_off,color: Color(0XFF001840),),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Color(0XFF022051)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0XFF001840)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0XFF001840)
                      ))),),
            const SizedBox(height: 33,),
            const Row(
              children: [
                Text('Forget Password?',
                    style: TextStyle(
                      fontSize: 15,)),
              ],),
            const SizedBox(height: 60,),
            InkWell(
              onTap:(){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=> const BottomNavBar()
                ));
              },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: <Color>[Color(0Xff102A71), Color(0XFF001840)]
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                width: 500,
                height: 60,
                child: const Center(
                    child: Text('Login',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?',
                  style: TextStyle(
                    color: Color(0XFF102A71),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SignUpScreen()),
                    );
                  },
                  child: const Text('  Sign Up',
                    style: TextStyle(
                      color: Color(0XFFF5C400),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),),);
  }
}