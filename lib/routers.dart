import 'package:flutter/material.dart';
import 'package:onlinelearning/screens/authen/login_screen.dart';
import 'package:onlinelearning/screens/authen/signup_screen.dart';
import 'package:onlinelearning/screens/course_page.dart';
import 'package:onlinelearning/screens/main_page.dart';
import 'package:onlinelearning/screens/payment_page.dart';
import 'package:onlinelearning/screens/welcome_screen.dart';

class Routers {
  static Map<String, WidgetBuilder> get all => {
        mainScreen: (context) => MainScreen(),
        loginScreen: (context) => LoginScreen(),
        paymentScreen: (context) => PaymentScreen(),
        courseScreen: (context) => CourseScreen(),
        welcomeScreen: (context) => WelcomeScreen(),
        signUpScreen: (context) => SignUpScreen(),
      };

  static RoutePredicate get routeEmpty => ModalRoute.withName('/');

  static String get mainScreen => '/mainScreen';

  static String get loginScreen => '/loginScreen';

  static String get paymentScreen => '/paymentScreen';

  static String get courseScreen => '/courseScreen';

  static String get welcomeScreen => '/welcomeScreen';

  static String get signUpScreen => '/signUpScreen';
}
