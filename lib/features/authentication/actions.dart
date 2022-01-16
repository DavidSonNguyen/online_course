import 'package:built_value/built_value.dart';
part 'actions.g.dart';

abstract class AuthenticationAction {}

abstract class UpdateUsernameAuthenticationAction
    implements
        Built<UpdateUsernameAuthenticationAction,
            UpdateUsernameAuthenticationActionBuilder>,
        AuthenticationAction {
  UpdateUsernameAuthenticationAction._();

  String get name;

  factory UpdateUsernameAuthenticationAction(
          [Function(UpdateUsernameAuthenticationActionBuilder) builder]) =
      _$UpdateUsernameAuthenticationAction;
}
