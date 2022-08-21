// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetStatusAuthenticationAction extends SetStatusAuthenticationAction {
  @override
  final String statusKey;
  @override
  final Status status;

  factory _$SetStatusAuthenticationAction(
          [void Function(SetStatusAuthenticationActionBuilder)? updates]) =>
      (new SetStatusAuthenticationActionBuilder()..update(updates)).build();

  _$SetStatusAuthenticationAction._(
      {required this.statusKey, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetStatusAuthenticationAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        status, 'SetStatusAuthenticationAction', 'status');
  }

  @override
  SetStatusAuthenticationAction rebuild(
          void Function(SetStatusAuthenticationActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetStatusAuthenticationActionBuilder toBuilder() =>
      new SetStatusAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetStatusAuthenticationAction &&
        statusKey == other.statusKey &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetStatusAuthenticationAction')
          ..add('statusKey', statusKey)
          ..add('status', status))
        .toString();
  }
}

class SetStatusAuthenticationActionBuilder
    implements
        Builder<SetStatusAuthenticationAction,
            SetStatusAuthenticationActionBuilder> {
  _$SetStatusAuthenticationAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  StatusBuilder? _status;
  StatusBuilder get status => _$this._status ??= new StatusBuilder();
  set status(StatusBuilder? status) => _$this._status = status;

  SetStatusAuthenticationActionBuilder();

  SetStatusAuthenticationActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _status = $v.status.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetStatusAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetStatusAuthenticationAction;
  }

  @override
  void update(void Function(SetStatusAuthenticationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetStatusAuthenticationAction build() {
    _$SetStatusAuthenticationAction _$result;
    try {
      _$result = _$v ??
          new _$SetStatusAuthenticationAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetStatusAuthenticationAction', 'statusKey'),
              status: status.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        status.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetStatusAuthenticationAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RemoveStatusAuthenticationAction
    extends RemoveStatusAuthenticationAction {
  @override
  final String statusKey;

  factory _$RemoveStatusAuthenticationAction(
          [void Function(RemoveStatusAuthenticationActionBuilder)? updates]) =>
      (new RemoveStatusAuthenticationActionBuilder()..update(updates)).build();

  _$RemoveStatusAuthenticationAction._({required this.statusKey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'RemoveStatusAuthenticationAction', 'statusKey');
  }

  @override
  RemoveStatusAuthenticationAction rebuild(
          void Function(RemoveStatusAuthenticationActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveStatusAuthenticationActionBuilder toBuilder() =>
      new RemoveStatusAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveStatusAuthenticationAction &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveStatusAuthenticationAction')
          ..add('statusKey', statusKey))
        .toString();
  }
}

class RemoveStatusAuthenticationActionBuilder
    implements
        Builder<RemoveStatusAuthenticationAction,
            RemoveStatusAuthenticationActionBuilder> {
  _$RemoveStatusAuthenticationAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  RemoveStatusAuthenticationActionBuilder();

  RemoveStatusAuthenticationActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveStatusAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveStatusAuthenticationAction;
  }

  @override
  void update(void Function(RemoveStatusAuthenticationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveStatusAuthenticationAction build() {
    final _$result = _$v ??
        new _$RemoveStatusAuthenticationAction._(
            statusKey: BuiltValueNullFieldError.checkNotNull(
                statusKey, 'RemoveStatusAuthenticationAction', 'statusKey'));
    replace(_$result);
    return _$result;
  }
}

class _$UpdateUsernameAuthenticationAction
    extends UpdateUsernameAuthenticationAction {
  @override
  final String name;

  factory _$UpdateUsernameAuthenticationAction(
          [void Function(UpdateUsernameAuthenticationActionBuilder)?
              updates]) =>
      (new UpdateUsernameAuthenticationActionBuilder()..update(updates))
          .build();

  _$UpdateUsernameAuthenticationAction._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, 'UpdateUsernameAuthenticationAction', 'name');
  }

  @override
  UpdateUsernameAuthenticationAction rebuild(
          void Function(UpdateUsernameAuthenticationActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUsernameAuthenticationActionBuilder toBuilder() =>
      new UpdateUsernameAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUsernameAuthenticationAction && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateUsernameAuthenticationAction')
          ..add('name', name))
        .toString();
  }
}

class UpdateUsernameAuthenticationActionBuilder
    implements
        Builder<UpdateUsernameAuthenticationAction,
            UpdateUsernameAuthenticationActionBuilder> {
  _$UpdateUsernameAuthenticationAction? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateUsernameAuthenticationActionBuilder();

  UpdateUsernameAuthenticationActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUsernameAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUsernameAuthenticationAction;
  }

  @override
  void update(
      void Function(UpdateUsernameAuthenticationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateUsernameAuthenticationAction build() {
    final _$result = _$v ??
        new _$UpdateUsernameAuthenticationAction._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'UpdateUsernameAuthenticationAction', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$SetUserTokenAuthenticationAction
    extends SetUserTokenAuthenticationAction {
  @override
  final String userToken;

  factory _$SetUserTokenAuthenticationAction(
          [void Function(SetUserTokenAuthenticationActionBuilder)? updates]) =>
      (new SetUserTokenAuthenticationActionBuilder()..update(updates)).build();

  _$SetUserTokenAuthenticationAction._({required this.userToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userToken, 'SetUserTokenAuthenticationAction', 'userToken');
  }

  @override
  SetUserTokenAuthenticationAction rebuild(
          void Function(SetUserTokenAuthenticationActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetUserTokenAuthenticationActionBuilder toBuilder() =>
      new SetUserTokenAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUserTokenAuthenticationAction &&
        userToken == other.userToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetUserTokenAuthenticationAction')
          ..add('userToken', userToken))
        .toString();
  }
}

class SetUserTokenAuthenticationActionBuilder
    implements
        Builder<SetUserTokenAuthenticationAction,
            SetUserTokenAuthenticationActionBuilder> {
  _$SetUserTokenAuthenticationAction? _$v;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  SetUserTokenAuthenticationActionBuilder();

  SetUserTokenAuthenticationActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userToken = $v.userToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetUserTokenAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetUserTokenAuthenticationAction;
  }

  @override
  void update(void Function(SetUserTokenAuthenticationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetUserTokenAuthenticationAction build() {
    final _$result = _$v ??
        new _$SetUserTokenAuthenticationAction._(
            userToken: BuiltValueNullFieldError.checkNotNull(
                userToken, 'SetUserTokenAuthenticationAction', 'userToken'));
    replace(_$result);
    return _$result;
  }
}

class _$SetNameAuthenticationAction extends SetNameAuthenticationAction {
  factory _$SetNameAuthenticationAction(
          [void Function(SetNameAuthenticationActionBuilder)? updates]) =>
      (new SetNameAuthenticationActionBuilder()..update(updates)).build();

  _$SetNameAuthenticationAction._() : super._();

  @override
  SetNameAuthenticationAction rebuild(
          void Function(SetNameAuthenticationActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetNameAuthenticationActionBuilder toBuilder() =>
      new SetNameAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetNameAuthenticationAction;
  }

  @override
  int get hashCode {
    return 198636964;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetNameAuthenticationAction')
        .toString();
  }
}

class SetNameAuthenticationActionBuilder
    implements
        Builder<SetNameAuthenticationAction,
            SetNameAuthenticationActionBuilder> {
  _$SetNameAuthenticationAction? _$v;

  SetNameAuthenticationActionBuilder();

  @override
  void replace(SetNameAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetNameAuthenticationAction;
  }

  @override
  void update(void Function(SetNameAuthenticationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetNameAuthenticationAction build() {
    final _$result = _$v ?? new _$SetNameAuthenticationAction._();
    replace(_$result);
    return _$result;
  }
}

class _$CheckHasLoginAuthenticationAction
    extends CheckHasLoginAuthenticationAction {
  factory _$CheckHasLoginAuthenticationAction(
          [void Function(CheckHasLoginAuthenticationActionBuilder)? updates]) =>
      (new CheckHasLoginAuthenticationActionBuilder()..update(updates)).build();

  _$CheckHasLoginAuthenticationAction._() : super._();

  @override
  CheckHasLoginAuthenticationAction rebuild(
          void Function(CheckHasLoginAuthenticationActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckHasLoginAuthenticationActionBuilder toBuilder() =>
      new CheckHasLoginAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckHasLoginAuthenticationAction;
  }

  @override
  int get hashCode {
    return 344554198;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CheckHasLoginAuthenticationAction')
        .toString();
  }
}

class CheckHasLoginAuthenticationActionBuilder
    implements
        Builder<CheckHasLoginAuthenticationAction,
            CheckHasLoginAuthenticationActionBuilder> {
  _$CheckHasLoginAuthenticationAction? _$v;

  CheckHasLoginAuthenticationActionBuilder();

  @override
  void replace(CheckHasLoginAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckHasLoginAuthenticationAction;
  }

  @override
  void update(
      void Function(CheckHasLoginAuthenticationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckHasLoginAuthenticationAction build() {
    final _$result = _$v ?? new _$CheckHasLoginAuthenticationAction._();
    replace(_$result);
    return _$result;
  }
}

class _$LoginWithUserNamePasswordAuthenticationAction
    extends LoginWithUserNamePasswordAuthenticationAction {
  factory _$LoginWithUserNamePasswordAuthenticationAction(
          [void Function(LoginWithUserNamePasswordAuthenticationActionBuilder)?
              updates]) =>
      (new LoginWithUserNamePasswordAuthenticationActionBuilder()
            ..update(updates))
          .build();

  _$LoginWithUserNamePasswordAuthenticationAction._() : super._();

  @override
  LoginWithUserNamePasswordAuthenticationAction rebuild(
          void Function(LoginWithUserNamePasswordAuthenticationActionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginWithUserNamePasswordAuthenticationActionBuilder toBuilder() =>
      new LoginWithUserNamePasswordAuthenticationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginWithUserNamePasswordAuthenticationAction;
  }

  @override
  int get hashCode {
    return 468235165;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(
            'LoginWithUserNamePasswordAuthenticationAction')
        .toString();
  }
}

class LoginWithUserNamePasswordAuthenticationActionBuilder
    implements
        Builder<LoginWithUserNamePasswordAuthenticationAction,
            LoginWithUserNamePasswordAuthenticationActionBuilder> {
  _$LoginWithUserNamePasswordAuthenticationAction? _$v;

  LoginWithUserNamePasswordAuthenticationActionBuilder();

  @override
  void replace(LoginWithUserNamePasswordAuthenticationAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginWithUserNamePasswordAuthenticationAction;
  }

  @override
  void update(
      void Function(LoginWithUserNamePasswordAuthenticationActionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginWithUserNamePasswordAuthenticationAction build() {
    final _$result =
        _$v ?? new _$LoginWithUserNamePasswordAuthenticationAction._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
