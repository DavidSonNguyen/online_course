import 'package:flutter/material.dart';
import 'package:onlinelearning/course_page.dart';
import 'package:onlinelearning/login_page.dart';
import 'package:onlinelearning/main_page.dart';
import 'package:onlinelearning/payment_page.dart';

class Routers {
  static Map<String, WidgetBuilder> get all => {
        '/mainPage': (context) => MainPage(),
        '/loginPage': (context) => LoginPage(),
        '/paymentPage': (context) => PaymentPage(),
        '/coursePage': (context) => CoursePage(),
      };
}
