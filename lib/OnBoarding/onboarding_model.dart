import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:your_guide/OnBoarding/onboarding_screen.dart';
import 'package:your_guide/screens/welcome_screen.dart';


class OnBoardingScreen extends StatefulWidget {
  static const String routeName="OnBoardingScreen";


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex =0;
  late PageController _pageController;

  @override
  void initState(){
    _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  _storeOnBoardingScreenInfo() async{
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('OnBoardingScreen', isViewed);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0XFFEEEEEE),
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () async{
                _storeOnBoardingScreenInfo();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
              child: Text("Skip",style:
              TextStyle(
                  color: Color(0XFFF5C400)),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index){
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context,index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(screens[index].image),
                  Container(
                    height: 10.0,
                    child: ListView.builder(
                        itemCount: screens.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,index){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width:  currentIndex == index ? 20 : 7,
                                height: 7,
                                decoration: BoxDecoration(
                                    color: currentIndex == index ? Color(0XFFF5C400): Color(0XFF001840),
                                    //
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Text(screens[index].text,
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0XFF001840),
                        fontFamily: 'ComicSansMS'
                    ),),
                  InkWell(
                    onTap: ()async{
                      if(index==screens.length-1){
                        await _storeOnBoardingScreenInfo();
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                      }
                      _pageController.nextPage(duration: Duration(microseconds: 300), curve: Curves.bounceIn);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors:
                        <Color>[Color(0Xff102A71),Color(0XFF001840)]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Next',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0XFFF5C400),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ), Icon(Icons.arrow_forward_rounded, color: Color(0XFFF5C400), size: 20,)
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
