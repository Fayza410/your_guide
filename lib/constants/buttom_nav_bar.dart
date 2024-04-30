import 'package:flutter/material.dart';
import 'package:your_guide/screens/cv_options.dart';
import 'package:your_guide/tabs/basic_roadmap.dart';
import 'package:your_guide/tabs/companies_tab.dart';
import 'package:your_guide/tabs/home_tab.dart';


class BottomNavBar extends StatefulWidget {
  static const String routeName='Bottom';

  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          index=value;
          setState(() {

          });
        },
        backgroundColor: Color(0XFF001840),
        selectedItemColor: Color(0XFFF5C400),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home",backgroundColor: Color(0XFF001840)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/roadmap.png")), label: "RoadMap",backgroundColor: Color(0XFF001840)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/CV.png")), label: "CV",backgroundColor: Color(0XFF001840)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/company.png")), label: "Company",backgroundColor: Color(0XFF001840)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Settings",backgroundColor: Color(0XFF001840)),
        ],
      ),
      body: tabs[index],
    );
  }
  List<Widget>tabs=[
    HomeTab(),
    RoadMap(),
    CvOptions(),
    CompaniesTab(),


  ];
}