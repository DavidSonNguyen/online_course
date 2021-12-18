import 'package:flutter/material.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/routers.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: RoundedButton(
        text: "LOG OUT",
        press: () {
          Navigator.pushNamedAndRemoveUntil(
              context, Routers.welcomeScreen, Routers.routeEmpty);
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
