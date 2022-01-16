import 'package:injectable/injectable.dart';

abstract class AuthenticationRepositoryBase {
  Future<String> getUserName();
}

class AuthenticationRepository extends AuthenticationRepositoryBase {
  final AuthenticationRepositoryBase services;

  @injectable
  AuthenticationRepository(this.services);

  @override
  Future<String> getUserName() {
    return services.getUserName();
  }
}
