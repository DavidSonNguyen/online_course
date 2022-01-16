import 'package:redux/redux.dart';
import 'states.dart';
import 'actions.dart';

final Reducer<AuthenticationState> authenReducers = combineReducers([
  TypedReducer<AuthenticationState, UpdateUsernameAuthenticationAction>(
      _setUsername),
]);

AuthenticationState _setUsername(
    AuthenticationState state, UpdateUsernameAuthenticationAction action) {
  return AuthenticationState(
    (builder) => builder..username = action.name,
  );
}
