import 'package:onlinelearning/features/states.dart';
import 'package:redux/redux.dart';

import 'authentication/reducers.dart';

final Reducer<AppState> appReducers = combineReducers([
  testReducer,
]);

AppState testReducer(AppState state, dynamic action) {
  return AppState(
    (builder) => builder
      ..authenticationState = authenReducers(
        state.authenticationState,
        action,
      ).toBuilder(),
  );
}
