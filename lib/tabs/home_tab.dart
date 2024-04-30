import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  static const String routeName='HomeTab';
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: <Color>[Color(0Xff102A71), Color(0XFF001840)]
                  ),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50)
                  )
              ),
              height: height * 0.2,
              width: width,

            )
          ],
        ),
      ),
    );
  }
}