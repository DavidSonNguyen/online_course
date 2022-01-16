import 'dart:math';

import 'package:onlinelearning/base/services.dart';
import 'package:onlinelearning/features/authentication/repo/repository.dart';

class AuthenticationService extends AuthenticationRepositoryBase {
  final AppClient appClient;

  AuthenticationService(this.appClient);

  @override
  Future<String> getUserName() async {
    // final response = await AppClient.instance.get(Uri.https('authority', 'unencodedPath'));
    // return response.body;
    return Future.delayed(
      new Duration(seconds: 1),
          () => Random().nextInt(10000000).toString(),
    );
  }
}
