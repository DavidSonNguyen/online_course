import 'package:flutter/material.dart';
import 'package:onlinelearning/home/home_page.dart';
import 'package:onlinelearning/home/live_stream_page.dart';
import 'package:onlinelearning/home/setting_page.dart';
import 'package:onlinelearning/res/colors.dart';

import 'home/document_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    HomePage(),
    LiveStreamPage(),
    DocumentPage(),
    SettingPage(),
  ];
  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        child: PageView(
          children: pages,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mainColor.withOpacity(0.5),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(
              microseconds: 300,
            ),
            curve: Curves.linear,
          );
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              size: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 28,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: <Widget>[
// IconButton(
// icon: Icon(
// Icons.subscriptions,
// color: Color(0xff2657ce),
// size: 40,
// ),
// ),
// IconButton(
// icon: Icon(
// Icons.camera_alt,
// color: Color(0xff2657ce).withOpacity(0.5),
// size: 40,
// ),
// ),
// IconButton(
// icon: Icon(
// Icons.description,
// color: Color(0xff2657ce).withOpacity(0.5),
// size: 40,
// ),
// ),
// IconButton(
// icon: Icon(
// Icons.settings,
// color: Color(0xff2657ce).withOpacity(0.5),
// size: 40,
// ),
// ),
// ],
// )
