import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlinelearning/components/already_have_an_account_acheck.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/components/rounded_input_field.dart';
import 'package:onlinelearning/components/rounded_password_field.dart';
import 'package:onlinelearning/features/authentication/actions.dart';
import 'package:onlinelearning/features/states.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/routers.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    final s = S.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                s.login.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                AppAssets.login,
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: s.your_email,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: s.login.toUpperCase(),
                press: () {
                  store.dispatch(
                    LoginWithUserNamePasswordAuthenticationAction(),
                  );
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routers.homeScreen, Routers.routeEmpty);
                },
              ),
              SizedBox(height: size.height * 0.03),
              OtherOptionAuthenWidget(
                content: s.dont_have_account,
                action: s.signup,
                press: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    Routers.signUpScreen,
                    Routers.routeEmpty,
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
    Key? key,
    required this.child,
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
                AppAssets.main_top,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                AppAssets.login_bottom,
                fit: BoxFit.fitWidth,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
