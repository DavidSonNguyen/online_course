import 'package:built_value/built_value.dart';

part 'status.g.dart';

enum StatusState {
  idle,
  loading,
  success,
  error,
}

abstract class Status implements Built<Status, StatusBuilder> {
  Status._();

  StatusState get state;

  String get message;

  factory Status.idle() =>
      Status((builder) => builder..state = StatusState.idle);

  factory Status.loading() =>
      Status((builder) => builder..state = StatusState.loading);

  factory Status.success() =>
      Status((builder) => builder..state = StatusState.success);

  factory Status.error() =>
      Status((builder) => builder..state = StatusState.error);

  static void _initializeBuilder(StatusBuilder builder) => builder
    ..message = ''
    ..state = StatusState.idle;

  factory Status([Function(StatusBuilder) builder]) = _$Status;
}
