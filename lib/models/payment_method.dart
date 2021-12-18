import 'package:built_value/built_value.dart';

part 'payment_method.g.dart';

abstract class PaymentMethod
    implements Built<PaymentMethod, PaymentMethodBuilder> {
  PaymentMethod._();

  String get title;

  String get info;

  String get image;

  factory PaymentMethod([Function(PaymentMethodBuilder) updates]) =
      _$PaymentMethod;

  factory PaymentMethod.create(String title, String info, String image) {
    return PaymentMethod(
      (updates) => updates
        ..title = title
        ..image = image
        ..info = info,
    );
  }
}
