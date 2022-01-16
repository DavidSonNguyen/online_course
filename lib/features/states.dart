import 'package:built_value/built_value.dart';
import 'authentication/states.dart';

part 'states.g.dart';

abstract class AppState
    implements Built<AppState, AppStateBuilder>, AuthenticationStateInterface {
  AppState._();

  static void _initializeBuilder(AppStateBuilder builder) =>
      builder..authenticationState = AuthenticationState().toBuilder();

  factory AppState([Function(AppStateBuilder) builder]) = _$AppState;
}
