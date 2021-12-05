import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearning/components/already_have_an_account_acheck.dart';
import 'package:onlinelearning/components/or_divider.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/components/rounded_input_field.dart';
import 'package:onlinelearning/components/rounded_password_field.dart';
import 'package:onlinelearning/components/social_icon.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/authen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
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
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                AppAssets.signup,
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {
                  Navigator.pushNamed(context, Routers.loginScreen);
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushNamed(context, Routers.loginScreen);
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: AppAssets.facebook,
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: AppAssets.twitter,
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: AppAssets.google_plus,
                    press: () {},
                  ),
                ],
              )
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
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AppAssets.signup_top,
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.main_bottom,
              width: size.width * 0.25,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
