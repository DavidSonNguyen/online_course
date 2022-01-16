import 'package:injectable/injectable.dart';
import 'package:onlinelearning/features/authentication/repo/repository.dart';
import 'package:onlinelearning/features/authentication/repo/services.dart';

@module
abstract class AuthenticationModule {
  @singleton
  AuthenticationRepositoryBase authenticationRepo(
      @injectable AuthenticationService service) {
    return AuthenticationRepository(service);
  }
}
