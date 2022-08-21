// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final AuthenticationState authenticationState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.authenticationState}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authenticationState, 'AppState', 'authenticationState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        authenticationState == other.authenticationState;
  }

  @override
  int get hashCode {
    return $jf($jc(0, authenticationState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('authenticationState', authenticationState))
        .toString();
  }
}

class AppStateBuilder
    implements
        Builder<AppState, AppStateBuilder>,
        AuthenticationStateInterfaceBuilder {
  _$AppState? _$v;

  AuthenticationStateBuilder? _authenticationState;
  AuthenticationStateBuilder get authenticationState =>
      _$this._authenticationState ??= new AuthenticationStateBuilder();
  set authenticationState(
          covariant AuthenticationStateBuilder? authenticationState) =>
      _$this._authenticationState = authenticationState;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authenticationState = $v.authenticationState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(authenticationState: authenticationState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationState';
        authenticationState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
