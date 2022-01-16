// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/repo/repository.dart' as _i5;
import '../../features/authentication/repo/services.dart' as _i4;
import '../services.dart' as _i3;
import 'modules/authentication_module.dart' as _i7;
import 'service_module.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final serviceModule = _$ServiceModule();
  final authenticationModule = _$AuthenticationModule();
  gh.singleton<_i3.AppClient>(serviceModule.appClient());
  gh.singleton<_i4.AuthenticationService>(
      serviceModule.authenticationService(get<_i3.AppClient>()));
  gh.singleton<_i5.AuthenticationRepositoryBase>(authenticationModule
      .authenticationRepo(get<_i4.AuthenticationService>()));
  return get;
}

class _$ServiceModule extends _i6.ServiceModule {}

class _$AuthenticationModule extends _i7.AuthenticationModule {}
