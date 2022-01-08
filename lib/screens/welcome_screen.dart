import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';

class WelcomeScreen extends StatelessWidget {
  S localization;

  @override
  Widget build(BuildContext context) {
    localization = S.of(context);
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
                text: localization.login.toUpperCase(),
                press: () {
                  Navigator.pushReplacementNamed(context, Routers.loginScreen);
                },
              ),
              RoundedButton(
                text: localization.signup.toUpperCase(),
                color: AppColors.kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.pushReplacementNamed(
                    context,
                    Routers.signUpScreen,
                  );
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
    return Center(
      child: Container(
        height: size.height,
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: kIsWeb ? 500.0 : double.maxFinite,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                AppAssets.main_top,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Image.asset(
                AppAssets.main_bottom,
              ),
            ),
            Center(child: child),
          ],
        ),
      ),
    );
  }
}
