import 'package:injectable/injectable.dart';

abstract class AuthenticationRepositoryBase {
  Future<String> getUserName();

  Future<String> getUserToken();

  Future<void> setUserToken(String userId);

  void setInterceptor(String token);
}

class AuthenticationRepository extends AuthenticationRepositoryBase {
  final AuthenticationRepositoryBase services;

  @injectable
  AuthenticationRepository(this.services);

  @override
  Future<String> getUserName() {
    return services.getUserName();
  }

  @override
  Future<String> getUserToken() {
    return services.getUserToken();
  }

  @override
  Future<void> setUserToken(String userId) {
    return services.setUserToken(userId);
  }

  @override
  void setInterceptor(String token) {
    return services.setInterceptor(token);
  }
}
