import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/splash_screen.dart';
import 'package:onlinelearning/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      home: kIsWeb ? WelcomeScreen() : SplashScreen(),
      routes: Routers.all,
      localizationsDelegates: [
        AppLocalizationDelegate(),
      ],
    );
  }
}
