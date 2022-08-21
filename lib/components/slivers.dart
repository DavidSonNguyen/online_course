import 'package:flutter/cupertino.dart';

class SliverSingle extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;

  const SliverSingle({
    Key? key,
    this.child,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return child ??
              SizedBox(
                width: width,
                height: height,
              );
        },
        childCount: 1,
      ),
    );
  }

  factory SliverSingle.empty({double? height, double? width}) {
    return SliverSingle(
      width: width,
      height: height,
    );
  }
}
