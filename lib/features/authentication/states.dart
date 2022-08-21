import 'package:built_value/built_value.dart';
import 'package:onlinelearning/base/status.dart';
import 'package:built_collection/built_collection.dart';

part 'states.g.dart';

@BuiltValue(instantiable: false)
abstract class AuthenticationStateInterface {
  AuthenticationState get authenticationState;

  AuthenticationStateInterface rebuild(
    Function(AuthenticationStateInterfaceBuilder) updates,
  );

  AuthenticationStateInterfaceBuilder toBuilder();
}

abstract class AuthenticationState
    implements Built<AuthenticationState, AuthenticationStateBuilder> {
  AuthenticationState._();

  String get username;

  String get userToken;

  BuiltMap<String, Status> get statuses;

  static void _initializeBuilder(AuthenticationStateBuilder builder) => builder
    ..username = ''
    ..userToken = ''
    ..statuses = MapBuilder<String, Status>();

  factory AuthenticationState([Function(AuthenticationStateBuilder) builder]) =
      _$AuthenticationState;
}
