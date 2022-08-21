import 'package:redux/redux.dart';
import 'package:redux_compact/redux_compact.dart';
import 'states.dart';
import 'actions.dart';

// final Reducer<AuthenticationState> authenReducers = combineReducers([
//   TypedReducer<AuthenticationState, SetStatusAuthenticationAction>(_setStatus),
//   TypedReducer<AuthenticationState, RemoveStatusAuthenticationAction>(
//       _removeStatus),
//   TypedReducer<AuthenticationState, UpdateUsernameAuthenticationAction>(
//       _setUsername),
//   TypedReducer<AuthenticationState, SetUserTokenAuthenticationAction>(
//       _setUserToken),
// ]);
//
// AuthenticationState _setStatus(
//     AuthenticationState state, SetStatusAuthenticationAction action) {
//   return state.rebuild(
//     (updates) => updates..statuses[action.statusKey] = action.status,
//   );
// }
//
// AuthenticationState _removeStatus(
//     AuthenticationState state, RemoveStatusAuthenticationAction action) {
//   final statuses = state.statuses.rebuild((builder) {
//     if (action.statusKey.isNotEmpty) {
//       builder.remove(action.statusKey);
//     } else {
//       builder.clear();
//     }
//     return builder;
//   });
//   return state.rebuild(
//     (builder) => builder..statuses = statuses.toBuilder(),
//   );
// }
//
// AuthenticationState _setUsername(
//     AuthenticationState state, UpdateUsernameAuthenticationAction action) {
//   return state.rebuild(
//     (builder) => builder..username = action.name,
//   );
// }
//
// AuthenticationState _setUserToken(
//     AuthenticationState state, SetUserTokenAuthenticationAction action) {
//   return state.rebuild((p0) => p0..userToken = action.userToken);
// }
