// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class AuthenticationStateInterfaceBuilder {
  void replace(AuthenticationStateInterface other);
  void update(void Function(AuthenticationStateInterfaceBuilder) updates);
  AuthenticationStateBuilder get authenticationState;
  set authenticationState(AuthenticationStateBuilder? authenticationState);
}

class _$AuthenticationState extends AuthenticationState {
  @override
  final String username;
  @override
  final String userToken;
  @override
  final BuiltMap<String, Status> statuses;

  factory _$AuthenticationState(
          [void Function(AuthenticationStateBuilder)? updates]) =>
      (new AuthenticationStateBuilder()..update(updates)).build();

  _$AuthenticationState._(
      {required this.username, required this.userToken, required this.statuses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'AuthenticationState', 'username');
    BuiltValueNullFieldError.checkNotNull(
        userToken, 'AuthenticationState', 'userToken');
    BuiltValueNullFieldError.checkNotNull(
        statuses, 'AuthenticationState', 'statuses');
  }

  @override
  AuthenticationState rebuild(
          void Function(AuthenticationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationStateBuilder toBuilder() =>
      new AuthenticationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationState &&
        username == other.username &&
        userToken == other.userToken &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, username.hashCode), userToken.hashCode), statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthenticationState')
          ..add('username', username)
          ..add('userToken', userToken)
          ..add('statuses', statuses))
        .toString();
  }
}

class AuthenticationStateBuilder
    implements Builder<AuthenticationState, AuthenticationStateBuilder> {
  _$AuthenticationState? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  MapBuilder<String, Status>? _statuses;
  MapBuilder<String, Status> get statuses =>
      _$this._statuses ??= new MapBuilder<String, Status>();
  set statuses(MapBuilder<String, Status>? statuses) =>
      _$this._statuses = statuses;

  AuthenticationStateBuilder() {
    AuthenticationState._initializeBuilder(this);
  }

  AuthenticationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _userToken = $v.userToken;
      _statuses = $v.statuses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationState;
  }

  @override
  void update(void Function(AuthenticationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthenticationState build() {
    _$AuthenticationState _$result;
    try {
      _$result = _$v ??
          new _$AuthenticationState._(
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'AuthenticationState', 'username'),
              userToken: BuiltValueNullFieldError.checkNotNull(
                  userToken, 'AuthenticationState', 'userToken'),
              statuses: statuses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        statuses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthenticationState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
