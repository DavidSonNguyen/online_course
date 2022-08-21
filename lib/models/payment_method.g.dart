// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentMethod extends PaymentMethod {
  @override
  final String title;
  @override
  final String info;
  @override
  final String image;

  factory _$PaymentMethod([void Function(PaymentMethodBuilder)? updates]) =>
      (new PaymentMethodBuilder()..update(updates)).build();

  _$PaymentMethod._(
      {required this.title, required this.info, required this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'PaymentMethod', 'title');
    BuiltValueNullFieldError.checkNotNull(info, 'PaymentMethod', 'info');
    BuiltValueNullFieldError.checkNotNull(image, 'PaymentMethod', 'image');
  }

  @override
  PaymentMethod rebuild(void Function(PaymentMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentMethodBuilder toBuilder() => new PaymentMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentMethod &&
        title == other.title &&
        info == other.info &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, title.hashCode), info.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentMethod')
          ..add('title', title)
          ..add('info', info)
          ..add('image', image))
        .toString();
  }
}

class PaymentMethodBuilder
    implements Builder<PaymentMethod, PaymentMethodBuilder> {
  _$PaymentMethod? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  PaymentMethodBuilder();

  PaymentMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _info = $v.info;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentMethod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentMethod;
  }

  @override
  void update(void Function(PaymentMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentMethod build() {
    final _$result = _$v ??
        new _$PaymentMethod._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'PaymentMethod', 'title'),
            info: BuiltValueNullFieldError.checkNotNull(
                info, 'PaymentMethod', 'info'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'PaymentMethod', 'image'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
