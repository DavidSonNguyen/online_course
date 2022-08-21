import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:onlinelearning/features/authentication/repo/repository.dart';

import 'app_injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await $initGetIt(getIt);

abstract class AppInjector {
  static AuthenticationRepositoryBase get authenticationRepo =>
      getIt.get<AuthenticationRepositoryBase>();
}
