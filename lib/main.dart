import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:onlinelearning/features/reducers.dart';
import 'package:onlinelearning/features/states.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/routers.dart';
import 'package:onlinelearning/screens/splash_screen.dart';
import 'package:onlinelearning/screens/welcome_screen.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'base/di/app_injector.dart';
import 'features/authentication/repo/repository.dart';

void main() async {
  await configureDependencies();

  final store = Store<AppState>(
    appReducers,
    initialState: AppState(),
    distinct: true,
    middleware: [
      thunkMiddleware,
      ExtraArgumentThunkMiddleware(
        getIt.get<AuthenticationRepositoryBase>(),
      )
    ],
  );

  runApp(
    MyApp(store: store),
  );
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Avenir'),
        home: kIsWeb ? WelcomeScreen() : SplashScreen(),
        routes: Routers.all,
        localizationsDelegates: [
          AppLocalizationDelegate(),
        ],
      ),
    );
  }
}
