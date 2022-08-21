import 'package:injectable/injectable.dart';
import 'package:onlinelearning/base/client_services.dart';
import 'package:onlinelearning/features/authentication/repo/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ServiceModule {
  @singleton
  AppClient appClient() {
    return AppClient();
  }

  @preResolve
  @singleton
  Future<SharedPreferences> sharedPreferences() {
    return SharedPreferences.getInstance();
  }

  @singleton
  AuthenticationService authenticationService(@injectable AppClient appClient,
      @injectable SharedPreferences sharedPreferences) {
    return AuthenticationService(appClient, sharedPreferences);
  }
}
