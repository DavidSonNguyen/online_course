// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Status extends Status {
  @override
  final StatusState state;
  @override
  final String message;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (new StatusBuilder()..update(updates)).build();

  _$Status._({required this.state, required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(state, 'Status', 'state');
    BuiltValueNullFieldError.checkNotNull(message, 'Status', 'message');
  }

  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status && state == other.state && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, state.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Status')
          ..add('state', state)
          ..add('message', message))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

  StatusState? _state;
  StatusState? get state => _$this._state;
  set state(StatusState? state) => _$this._state = state;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  StatusBuilder() {
    Status._initializeBuilder(this);
  }

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Status build() {
    final _$result = _$v ??
        new _$Status._(
            state:
                BuiltValueNullFieldError.checkNotNull(state, 'Status', 'state'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'Status', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
