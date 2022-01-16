import 'package:injectable/injectable.dart';
import 'package:onlinelearning/base/services.dart';
import 'package:onlinelearning/features/authentication/repo/services.dart';

@module
abstract class ServiceModule {
  @singleton
  AppClient appClient() {
    return AppClient();
  }

  @singleton
  AuthenticationService authenticationService(@injectable AppClient appClient) {
    return AuthenticationService(appClient);
  }
}
