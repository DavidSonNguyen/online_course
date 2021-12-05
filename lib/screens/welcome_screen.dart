import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/authen/login_screen.dart';
import 'package:onlinelearning/screens/authen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: _Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "WELCOME TO EDU",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                AppAssets.chat,
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.pushNamed(context, Routers.loginScreen);
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: AppColors.kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.pushNamed(context, Routers.signUpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  final Widget child;

  const _Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AppAssets.main_top,
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.main_bottom,
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
