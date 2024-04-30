import 'package:flutter/material.dart';
import 'package:your_guide/constants/buttom_nav_bar.dart';
import 'package:your_guide/screens/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName="SignUp";


  // var nameController = TextEditingController();
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  // var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.white,
        title: const Text('Sign Up',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Istok Web',
              color: Color(0XFF001840)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back,
          color: Color(0XFF022051),),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Row(
              children: [
                SizedBox(height: 150,),
                Text('Create account and enjoy all services',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Kokoro',
                      color: Color(0XFF001840)
                  ),
                ),
              ],
            ),

            // TextField(
            // // controller: nameController,
            //  decoration: InputDecoration(
            //      prefixIcon: Icon(Icons.person_2_outlined,
            //        color: Color(0XFFF5C400),
            //        size: 30,),
            //      hintText: 'Full Name',
            //      hintStyle: TextStyle(
            //        color: Color(0XFF022051),
            //      ),
            //      border: OutlineInputBorder(
            //        borderRadius: BorderRadius.all(Radius.circular(10)),
            //        borderSide: BorderSide(
            //            color: Color(0XFF001840)
            //        ),
            //      ),
            //      enabledBorder: OutlineInputBorder(
            //          borderRadius: BorderRadius.all(Radius.circular(10)),
            //          borderSide: BorderSide(
            //              color: Color(0XFF001840)
            //          )
            //      )),
            // ),
            const SizedBox(height: 20,),
            // Email
            TextField(
              //  controller: emailController,
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
                  )
              ),
            ),


            const SizedBox(height: 20,),


            // Password
            TextField(
              //controller: passwordController,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off_outlined,
                    color: Color(0XFF001840),
                    size: 15,
                  ),
                  prefixIcon:  Icon(Icons.lock_outline_rounded,
                    color: Color(0XFFF5C400),
                    size: 30,),
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


            // const SizedBox(height: 20,),


            // TextField(
            //   //controller: confirmPasswordController,
            //  decoration: InputDecoration(
            //      suffixIcon: Icon(Icons.visibility_off_outlined,
            //        color: Color(0XFF001840),
            //        size: 30,
            //      ),
            //      prefixIcon:  Icon(Icons.lock_outline_rounded,
            //        color: Color(0XFFF5C400),
            //        size: 30,),
            //      hintText: 'Confirm Password',
            //      hintStyle: TextStyle(
            //          color: Color(0XFF022051)
            //      ),
            //      border: OutlineInputBorder(
            //        borderRadius: BorderRadius.all(Radius.circular(10)),
            //        borderSide: BorderSide(
            //            color: Color(0XFF001840)
            //        ),
            //      ),
            //      enabledBorder: OutlineInputBorder(
            //          borderRadius: BorderRadius.all(Radius.circular(10)),
            //          borderSide: BorderSide(
            //              color: Color(0XFF001840)
            //          ))),),


            const SizedBox(height: 60,),


            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=> const BottomNavBar()
                ));

                // if (formKey.currentState!.validate()){
                //   FirebaseFunctions.createUser(emailController.text, passwordController.text)
                // }

              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: <Color>[Color(0Xff102A71),Color(0XFF001840)]
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                width: 500,
                height: 60,
                child: const Center(
                    child:  Text('Sign Up',
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
                const Text('Have an account? ',
                  style: TextStyle(
                    color: Color(0XFF102A71),
                  ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> LogInScreen()),
                    );
                  },
                  child: const Text(' Login',
                    style: TextStyle(
                      color: Color(0XFFF5C400),
                    ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
