import 'package:flutter/material.dart';
import 'package:indiatoday/pages/talk_to_astro_page.dart';
import 'package:indiatoday/pages/ask_a_question_page.dart';
import 'package:indiatoday/pages/home.dart';
import 'package:indiatoday/pages/reports_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currIdx = 0;

  List<Widget> pages = [
    HomePage(),
    TalktoAstroPage(),
    AskAQuestionPage(),
    ReportsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(),
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currIdx,
          onTap: (index) {
            setState(() {
              currIdx = index;
            });
          },
          selectedFontSize: 12,
          unselectedFontSize: 12,
          backgroundColor: Colors.white,
          fixedColor: Colors.deepOrange,
          items: [
            BottomNavigationBarItem(
                icon: inactiveBottomNavBarIcon(
                    imagePath: 'assets/images/home.png'),
                label: "Home",
                activeIcon: activeBottomNavBarIcon(
                    imagePath: 'assets/images/home.png')),
            BottomNavigationBarItem(
                icon: inactiveBottomNavBarIcon(
                    imagePath: 'assets/images/talk.png'),
                label: "Talk to Astrologer",
                activeIcon: activeBottomNavBarIcon(
                    imagePath: 'assets/images/talk.png')),
            BottomNavigationBarItem(
                icon: inactiveBottomNavBarIcon(
                    imagePath: 'assets/images/ask.png'),
                label: "Ask a Question",
                activeIcon:
                    activeBottomNavBarIcon(imagePath: 'assets/images/ask.png')),
            BottomNavigationBarItem(
                icon: inactiveBottomNavBarIcon(
                    imagePath: 'assets/images/reports.png'),
                label: "Reports",
                activeIcon: activeBottomNavBarIcon(
                    imagePath: 'assets/images/reports.png')),
          ],
        ),
        body: pages.elementAt(currIdx));
  }

  activeBottomNavBarIcon({required String imagePath}) {
    return Image.asset(
      imagePath,
      height: 20,
      width: 20,
    );
  }

  inactiveBottomNavBarIcon({required String imagePath}) {
    return Opacity(
      opacity: 0.4,
      child: Image.asset(
        imagePath,
        height: 20,
        width: 20,
      ),
    );
  }

  customAppBar() {
    return AppBar(
      leading: Image.asset(
        'assets/images/hamburger.png',
        height: 40,
        width: 40,
      ),
      actions: [
        Image.asset(
          'assets/images/profile.png',
          height: 30,
          width: 30,
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo.png',
        height: 60,
        width: 60,
      ),
    );
  }
}
