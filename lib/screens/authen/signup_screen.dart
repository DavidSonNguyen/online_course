import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearning/components/already_have_an_account_acheck.dart';
import 'package:onlinelearning/components/or_divider.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/components/rounded_input_field.dart';
import 'package:onlinelearning/components/rounded_password_field.dart';
import 'package:onlinelearning/components/social_icon.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/authen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  S s;

  @override
  Widget build(BuildContext context) {
    s = S.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: _Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                s.signup.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                AppAssets.signup,
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: s.your_email,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: s.signup.toUpperCase(),
                press: () {
                  Navigator.pushNamedAndRemoveUntil(context, Routers.loginScreen, Routers.routeEmpty);
                },
              ),
              SizedBox(height: size.height * 0.03),
              OtherOptionAuthenWidget(
                content: s.already_have_account,
                action: s.login,
                press: () {
                  Navigator.pushNamedAndRemoveUntil(context, Routers.loginScreen, Routers.routeEmpty);
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
    return Center(
      child: Container(
        width: double.infinity,
        height: size.height,
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
      ),
    );
  }
}
