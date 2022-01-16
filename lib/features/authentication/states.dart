import 'package:built_value/built_value.dart';

part 'states.g.dart';

abstract class AuthenticationStateInterface {
  AuthenticationState get authenticationState;
}

abstract class AuthenticationState
    implements Built<AuthenticationState, AuthenticationStateBuilder> {
  AuthenticationState._();

  String get username;

  static void _initializeBuilder(AuthenticationStateBuilder builder) =>
      builder..username = '';

  factory AuthenticationState([Function(AuthenticationStateBuilder) builder]) =
      _$AuthenticationState;
}
