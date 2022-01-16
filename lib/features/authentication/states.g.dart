// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticationState extends AuthenticationState {
  @override
  final String username;

  factory _$AuthenticationState(
          [void Function(AuthenticationStateBuilder) updates]) =>
      (new AuthenticationStateBuilder()..update(updates)).build();

  _$AuthenticationState._({this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'AuthenticationState', 'username');
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
    return other is AuthenticationState && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthenticationState')
          ..add('username', username))
        .toString();
  }
}

class AuthenticationStateBuilder
    implements Builder<AuthenticationState, AuthenticationStateBuilder> {
  _$AuthenticationState _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  AuthenticationStateBuilder() {
    AuthenticationState._initializeBuilder(this);
  }

  AuthenticationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
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
  void update(void Function(AuthenticationStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthenticationState build() {
    final _$result = _$v ??
        new _$AuthenticationState._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'AuthenticationState', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
