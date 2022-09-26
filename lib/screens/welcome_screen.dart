import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearning/base/status.dart';
import 'package:onlinelearning/components/rounded_button.dart';
import 'package:onlinelearning/features/authentication/actions.dart';
import 'package:onlinelearning/features/states.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/virtual_world_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final size = MediaQuery.of(context).size;
    return StoreConnector<AppState, Status>(
      distinct: true,
      onInit: (store) {
        print('welcome');
        store.dispatch(CheckHasLoginAuthenticationAction());
      },
      converter: (store) {
        return store.state.authenticationState
                .statuses['AuthenticationAction.checkLoginStatusKey'] ??
            Status();
      },
      onWillChange: (oldStatus, newStatus) {
        if (newStatus.state == StatusState.success) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routers.homeScreen,
            Routers.routeEmpty,
          );
        }
      },
      builder: (context, status) {
        final size = MediaQuery.of(context).size;
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Scaffold(
            body: GameWidget(
              game: VirtualWorld(
                width: size.width,
                height: size.height,
              ),
            ),
            // _Background(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget>[
            //         Text(
            //           "WELCOME TO EDU",
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //         SizedBox(height: size.height * 0.05),
            //         SvgPicture.asset(
            //           AppAssets.chat,
            //           height: size.height * 0.45,
            //         ),
            //         SizedBox(height: size.height * 0.05),
            //         RoundedButton(
            //           text: s.login.toUpperCase(),
            //           press: () {
            //             Navigator.pushReplacementNamed(
            //                 context, Routers.loginScreen);
            //           },
            //         ),
            //         RoundedButton(
            //           text: s.signup.toUpperCase(),
            //           color: AppColors.kPrimaryLightColor,
            //           textColor: Colors.black,
            //           press: () {
            //             Navigator.pushReplacementNamed(
            //               context,
            //               Routers.signUpScreen,
            //             );
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ),
        );
      },
      onDidChange: (oldStatus, newStatus) {
        // store.dispatch(RemoveStatusAuthenticationAction.create(
        //   AuthenticationAction.checkLoginStatusKey,
        // ));
      },
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
