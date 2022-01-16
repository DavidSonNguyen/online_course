// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUsernameAuthenticationAction
    extends UpdateUsernameAuthenticationAction {
  @override
  final String name;

  factory _$UpdateUsernameAuthenticationAction(
          [void Function(UpdateUsernameAuthenticationActionBuilder) updates]) =>
      (new UpdateUsernameAuthenticationActionBuilder()..update(updates))
          .build();

  _$UpdateUsernameAuthenticationAction._({this.name}) : super._() {
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
  _$UpdateUsernameAuthenticationAction _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

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
      void Function(UpdateUsernameAuthenticationActionBuilder) updates) {
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
