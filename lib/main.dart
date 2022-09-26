import 'package:flame/sprite.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:onlinelearning/features/states.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/splash_screen.dart';
import 'package:onlinelearning/screens/welcome_screen.dart';
import 'package:redux/redux.dart';
import 'package:redux_compact/redux_compact.dart';
import 'base/di/app_injector.dart';

void main() async {
  await configureDependencies();

  final store = Store<AppState>(
    ReduxCompact.createReducer(),
    initialState: AppState(),
    distinct: true,
    middleware: [
      ReduxCompact.createMiddleware<AppState>(
        onError: (error, dispatch) {
          print('$error');
        },
      ),
    ],
  );

  // final sprite = await Sprite.load('tile_0054.png');
  runApp(
    MyApp(store: store),
  );
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Avenir'),
        home: kIsWeb ? WelcomeScreen() : SplashScreen(),
        onGenerateRoute: (setting) {
          return MaterialPageRoute(
            settings: RouteSettings(
              name: setting.name,
            ),
            builder: Routers.all[setting.name]!,
          );
        },
        localizationsDelegates: [
          AppLocalizationDelegate(),
        ],
      ),
    );
  }
}
