import 'dart:math';

import 'package:onlinelearning/base/client_services.dart';
import 'package:onlinelearning/features/authentication/repo/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService extends AuthenticationRepositoryBase {
  final AppClient appClient;

  final SharedPreferences sharedPreferences;

  AuthenticationService(this.appClient, this.sharedPreferences);

  @override
  Future<String> getUserName() async {
    // final response = await AppClient.instance.get(Uri.https('authority', 'unencodedPath'));
    // return response.body;
    return Future.delayed(
      new Duration(seconds: 1),
      () => Random().nextInt(10000000).toString(),
    );
  }

  @override
  Future<String> getUserToken() async {
    return sharedPreferences.getString('userToken') ?? '';
  }

  @override
  Future<void> setUserToken(String token) async {
    final a = await sharedPreferences.setString('userToken', token);
  }

  @override
  void setInterceptor(String token) {
    appClient.setInterceptor({'token': token});
  }
}
