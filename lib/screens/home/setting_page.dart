import 'package:flutter/material.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RoundedButton(
        text: "LOG OUT",
        press: () {
          Navigator.pushNamed(context, Routers.welcomeScreen);
        },
      ),
    );
  }
}
