import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/routers.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> with AutomaticKeepAliveClientMixin{
  S s;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    s = S.of(context);
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: kIsWeb ? 500.0 : double.maxFinite,
        ),
        child: RoundedButton(
          text: s.logout.toUpperCase(),
          press: () {
            Navigator.pushNamedAndRemoveUntil(
                context, Routers.welcomeScreen, Routers.routeEmpty);
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
