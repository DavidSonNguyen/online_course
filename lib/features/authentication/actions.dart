import 'package:built_value/built_value.dart';
import 'package:onlinelearning/base/di/app_injector.dart';
import 'package:onlinelearning/base/status.dart';
import 'package:redux_compact/redux_compact.dart';

import 'states.dart';

part 'actions.g.dart';

abstract class SetStatusAuthenticationAction extends Object
    with
        CompactAction<AuthenticationStateInterface>
    implements
        Built<SetStatusAuthenticationAction,
            SetStatusAuthenticationActionBuilder> {
  SetStatusAuthenticationAction._();

  String get statusKey;

  Status get status;

  factory SetStatusAuthenticationAction.create(
      String statusKey, Status status) {
    return SetStatusAuthenticationAction(
      (builder) => builder
        ..statusKey = statusKey
        ..status = status.toBuilder(),
    );
  }

  factory SetStatusAuthenticationAction(
          [Function(SetStatusAuthenticationActionBuilder) builder]) =
      _$SetStatusAuthenticationAction;

  @override
  AuthenticationStateInterface reduce() {
    return state.rebuild(
      (p0) => p0.authenticationState..statuses[this.statusKey] = this.status,
    );
  }
}

abstract class RemoveStatusAuthenticationAction extends Object
    with
        CompactAction<AuthenticationStateInterface>
    implements
        Built<RemoveStatusAuthenticationAction,
            RemoveStatusAuthenticationActionBuilder> {
  RemoveStatusAuthenticationAction._();

  String get statusKey;

  factory RemoveStatusAuthenticationAction.create([String? statusKey]) {
    return RemoveStatusAuthenticationAction(
      (builder) => builder..statusKey = statusKey ?? '',
    );
  }

  factory RemoveStatusAuthenticationAction(
          [Function(RemoveStatusAuthenticationActionBuilder) builder]) =
      _$RemoveStatusAuthenticationAction;

  @override
  AuthenticationStateInterface reduce() {
    final statuses = state.authenticationState.statuses.rebuild((builder) {
      if (this.statusKey.isNotEmpty) {
        builder.remove(this.statusKey);
      } else {
        builder.clear();
      }
      return builder;
    });
    return state.rebuild(
      (builder) => builder.authenticationState..statuses = statuses.toBuilder(),
    );
  }
}

abstract class UpdateUsernameAuthenticationAction extends Object
    with
        CompactAction<AuthenticationStateInterface>
    implements
        Built<UpdateUsernameAuthenticationAction,
            UpdateUsernameAuthenticationActionBuilder> {
  UpdateUsernameAuthenticationAction._();

  String get name;

  factory UpdateUsernameAuthenticationAction(
          [Function(UpdateUsernameAuthenticationActionBuilder) builder]) =
      _$UpdateUsernameAuthenticationAction;

  @override
  AuthenticationStateInterface reduce() {
    return state.rebuild(
      (builder) => builder.authenticationState..username = this.name,
    );
  }
}

abstract class SetUserTokenAuthenticationAction extends Object
    with
        CompactAction<AuthenticationStateInterface>
    implements
        Built<SetUserTokenAuthenticationAction,
            SetUserTokenAuthenticationActionBuilder> {
  SetUserTokenAuthenticationAction._();

  String get userToken;

  factory SetUserTokenAuthenticationAction.create(String userToken) {
    return SetUserTokenAuthenticationAction(
      (builder) => builder..userToken = userToken,
    );
  }

  factory SetUserTokenAuthenticationAction(
          [Function(SetUserTokenAuthenticationActionBuilder) updates]) =
      _$SetUserTokenAuthenticationAction;

  @override
  AuthenticationStateInterface reduce() {
    return state.rebuild(
      (p0) => p0.authenticationState..userToken = this.userToken,
    );
  }
}

abstract class SetNameAuthenticationAction extends Object
    with CompactAction<AuthenticationStateInterface>
    implements
        Built<SetNameAuthenticationAction, SetNameAuthenticationActionBuilder> {
  SetNameAuthenticationAction._();

  factory SetNameAuthenticationAction(
          [Function(SetNameAuthenticationActionBuilder) updates]) =
      _$SetNameAuthenticationAction;

  @override
  Future<String> makeRequest() async {
    final data = await AppInjector.authenticationRepo.getUserName();
    return Future.value(data);
  }

  @override
  void before() {
    dispatch(
      SetStatusAuthenticationAction.create(
        'statusKey',
        Status.loading(),
      ),
    );
  }

  @override
  void after() {
    dispatch(
      UpdateUsernameAuthenticationAction(
        (updates) => updates..name = request.data,
      ),
    );
    dispatch(
      SetStatusAuthenticationAction.create(
        'statusKey',
        Status.success(),
      ),
    );
  }

  @override
  AuthenticationStateInterface reduce() {
    return state;
  }
}

abstract class CheckHasLoginAuthenticationAction extends Object
    with
        CompactAction<AuthenticationStateInterface>
    implements
        Built<CheckHasLoginAuthenticationAction,
            CheckHasLoginAuthenticationActionBuilder> {
  CheckHasLoginAuthenticationAction._();

  factory CheckHasLoginAuthenticationAction(
          [Function(CheckHasLoginAuthenticationActionBuilder) builder]) =
      _$CheckHasLoginAuthenticationAction;

  @override
  void before() {
    store.dispatch(SetStatusAuthenticationAction.create(
      'AuthenticationAction.checkLoginStatusKey',
      Status.loading(),
    ));
  }

  @override
  Future<String> makeRequest() async {
    final token = await AppInjector.authenticationRepo.getUserToken();
    return token;
  }

  @override
  void after() {
    final userToken = request.data;
    if (userToken.isNotEmpty) {
      AppInjector.authenticationRepo.setInterceptor(userToken);
      store.dispatch(SetUserTokenAuthenticationAction.create(userToken));
      store.dispatch(SetStatusAuthenticationAction.create(
        'AuthenticationAction.checkLoginStatusKey',
        Status.success(),
      ));
    } else {
      store.dispatch(SetStatusAuthenticationAction.create(
        'AuthenticationAction.checkLoginStatusKey',
        Status.error(),
      ));
    }
  }

  @override
  AuthenticationStateInterface reduce() {
    return state;
  }
}

abstract class LoginWithUserNamePasswordAuthenticationAction extends Object
    with
        CompactAction<AuthenticationStateInterface>
    implements
        Built<LoginWithUserNamePasswordAuthenticationAction,
            LoginWithUserNamePasswordAuthenticationActionBuilder> {
  LoginWithUserNamePasswordAuthenticationAction._();

  factory LoginWithUserNamePasswordAuthenticationAction(
      [Function(LoginWithUserNamePasswordAuthenticationActionBuilder)
          builder]) = _$LoginWithUserNamePasswordAuthenticationAction;

  @override
  makeRequest() {
    return AppInjector.authenticationRepo.setUserToken('hsdgfhdg');
  }

  @override
  AuthenticationStateInterface reduce() {
    return state;
  }
}
