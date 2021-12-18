import 'package:flutter/material.dart';
import 'package:onlinelearning/components/main_web_drawer.dart';
import 'package:onlinelearning/screens/main_screen/main_screen_platform.dart';

class MainScreen extends MainScreenPlatform {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends MainScreenPlatformState {
  Widget buildDrawer() {
    return MainWebDrawer(
      onItemTap: (index) {
        pageController.animateToPage(
          index,
          duration: Duration(
            microseconds: 300,
          ),
          curve: Curves.linear,
        );
      },
    );
  }

  @override
  ScrollPhysics pageScrollPhysics() {
    return NeverScrollableScrollPhysics();
  }
}
