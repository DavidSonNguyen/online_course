import 'package:flutter/material.dart';
import 'package:onlinelearning/screens/home/document_page.dart';
import 'package:onlinelearning/screens/home/home_page.dart';
import 'package:onlinelearning/screens/home/live_stream_page.dart';
import 'package:onlinelearning/screens/home/setting_page.dart';

abstract class MainScreenPlatform extends StatefulWidget {}

abstract class MainScreenPlatformState extends State<MainScreenPlatform> {
  final pages = [
    HomePage(),
    LiveStreamPage(),
    DocumentPage(),
    SettingPage(),
  ];
  int currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Row(
        children: [
          buildDrawer(),
          Expanded(
            child: Container(
              child: PageView(
                physics: pageScrollPhysics(),
                children: pages,
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildNavigation(),
    );
  }

  Widget buildNavigation() {
    return null;
  }

  Widget buildDrawer() {
    return SizedBox.shrink();
  }

  ScrollPhysics pageScrollPhysics();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
